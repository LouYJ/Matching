import os
import sys
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(BASE_DIR)
from plyfile import (PlyData, PlyElement, make2d, PlyParseError, PlyProperty)
import numpy as np
import h5py
import random

SAMPLING_BIN = os.path.join(BASE_DIR, 'third_party/mesh_sampling/build/pcsample')

SAMPLING_POINT_NUM = 2048
SAMPLING_LEAF_SIZE = 0.005

MODELNET40_PATH = '../datasets/modelnet40'
def export_ply(pc, filename):
	vertex = np.zeros(pc.shape[0], dtype=[('x', 'f4'), ('y', 'f4'), ('z', 'f4')])
	for i in range(pc.shape[0]):
		vertex[i] = (pc[i][0], pc[i][1], pc[i][2])
	ply_out = PlyData([PlyElement.describe(vertex, 'vertex', comments=['vertices'])])
	ply_out.write(filename)

# Sample points on the obj shape
def get_sampling_command(obj_filename, ply_filename):
    cmd = SAMPLING_BIN + ' ' + obj_filename
    cmd += ' ' + ply_filename
    cmd += ' -n_samples %d ' % SAMPLING_POINT_NUM
    cmd += ' -leaf_size %f ' % SAMPLING_LEAF_SIZE
    return cmd

# --------------------------------------------------------------
# Following are the helper functions to load MODELNET40 shapes
# --------------------------------------------------------------

# Read in the list of categories in MODELNET40
def get_category_names():
    shape_names_file = os.path.join(MODELNET40_PATH, 'shape_names.txt')
    shape_names = [line.rstrip() for line in open(shape_names_file)]
    return shape_names

# Return all the filepaths for the shapes in MODELNET40 
def get_obj_filenames():
    obj_filelist_file = os.path.join(MODELNET40_PATH, 'filelist.txt')
    obj_filenames = [os.path.join(MODELNET40_PATH, line.rstrip()) for line in open(obj_filelist_file)]
    print('Got %d obj files in modelnet40.' % len(obj_filenames))
    return obj_filenames

# Helper function to create the father folder and all subdir folders if not exist
def batch_mkdir(output_folder, subdir_list):
    if not os.path.exists(output_folder):
        os.mkdir(output_folder)
    for subdir in subdir_list:
        if not os.path.exists(os.path.join(output_folder, subdir)):
            os.mkdir(os.path.join(output_folder, subdir))

# ----------------------------------------------------------------
# Following are the helper functions to load save/load HDF5 files
# ----------------------------------------------------------------

# Write numpy array data and label to h5_filename
def save_h5_data_label_normal(h5_filename, data, label, normal, 
		data_dtype='float32', label_dtype='uint8', noral_dtype='float32'):
    h5_fout = h5py.File(h5_filename)
    h5_fout.create_dataset(
            'data', data=data,
            compression='gzip', compression_opts=4,
            dtype=data_dtype)
    h5_fout.create_dataset(
            'normal', data=normal,
            compression='gzip', compression_opts=4,
            dtype=normal_dtype)
    h5_fout.create_dataset(
            'label', data=label,
            compression='gzip', compression_opts=1,
            dtype=label_dtype)
    h5_fout.close()


# Write numpy array data and label to h5_filename
def save_h5(h5_filename, data, label, data_dtype='uint8', label_dtype='uint8'):
    h5_fout = h5py.File(h5_filename)
    h5_fout.create_dataset(
            'data', data=data,
            compression='gzip', compression_opts=4,
            dtype=data_dtype)
    h5_fout.create_dataset(
            'label', data=label,
            compression='gzip', compression_opts=1,
            dtype=label_dtype)
    h5_fout.close()

# Read numpy array data and label from h5_filename
def load_h5_data_label_normal(h5_filename):
    f = h5py.File(h5_filename)
    data = f['data'][:]
    label = f['label'][:]
    normal = f['normal'][:]
    return (data, label, normal)

# Read numpy array data and label from h5_filename
def load_h5_data_label_seg(h5_filename):
    f = h5py.File(h5_filename)
    data = f['data'][:]
    label = f['label'][:]
    seg = f['pid'][:]
    return (data, label, seg)

# Read numpy array data and label from h5_filename
def load_h5(h5_filename):
    f = h5py.File(h5_filename)
    data = f['data'][:]
    label = f['label'][:]
    return (data, label)

# ----------------------------------------------------------------
# Following are the helper functions to load save/load PLY files
# ----------------------------------------------------------------

# Load PLY file
def load_ply_data(filename, point_num):
    plydata = PlyData.read(filename)
    pc = plydata['vertex'].data[:point_num]
    pc_array = np.array([[x, y, z] for x,y,z in pc])
    return pc_array

# Load PLY file
def load_ply_normal(filename, point_num):
    plydata = PlyData.read(filename)
    pc = plydata['normal'].data[:point_num]
    pc_array = np.array([[x, y, z] for x,y,z in pc])
    return pc_array

# Make up rows for Nxk array
# Input Pad is 'edge' or 'constant'
def pad_arr_rows(arr, row, pad='edge'):
    assert(len(arr.shape) == 2)
    assert(arr.shape[0] <= row)
    assert(pad == 'edge' or pad == 'constant')
    if arr.shape[0] == row:
        return arr
    if pad == 'edge':
        return np.lib.pad(arr, ((0, row-arr.shape[0]), (0, 0)), 'edge')
    if pad == 'constant':
        return np.lib.pad(arr, ((0, row-arr.shape[0]), (0, 0)), 'constant', (0, 0))

# Me: Transform my data to h5 file
def save_h5_seg(data, label, pid, h5_filename, data_dtype='float32', label_dtype='uint8', pid_dtype='uint8'):
    h5_fout = h5py.File(h5_filename)
    h5_fout.create_dataset(
            'data', data=data,
            compression='gzip', compression_opts=4,
            dtype=data_dtype)
    h5_fout.create_dataset(
            'label', data=label,
            compression='gzip', compression_opts=1,
            dtype=label_dtype)
    h5_fout.create_dataset(
            'pid', data=pid,
            compression='gzip', compression_opts=1,
            dtype=pid_dtype)
    h5_fout.close()

def make_h5(model_path, seg_path, label_path, h5_filename, data_dtype='float32', label_dtype='uint8', pid_dtype='uint8'):
    model_lists = os.listdir(model_path)
    seg_lists = os.listdir(seg_path)

    model_lists.sort()
    seg_lists.sort()
    
    model_h5 = {}
    model_h5['data'] = []
    model_h5['label'] = []
    model_h5['pid'] = []

    fn2label = {}
    label_file = open(label_path)
    for line in label_file:
        split_line = line.split('    ')
        fn2label[split_line[1][:-2]] = int(split_line[0])
    label_file.close()

    for i in range(len(model_lists)):
        model_file = open(os.path.join(model_path,model_lists[i]))
        seg_file = open(os.path.join(seg_path,seg_lists[i]))

        models = model_file.readlines()
        points = []
        for p in models:
            p = p.split()
            point = [float(p[1]), float(p[2]), float(p[3])]
            points.append(point)

        seg = []
        for line in seg_file:
            seg.append(int(line[0]))

        model_h5['data'].append(points)
        model_h5['label'].append(fn2label[model_lists[i]])
        model_h5['pid'].append(seg)

        model_file.close()
        seg_file.close()

    save_h5_seg(np.array(model_h5['data']),
                np.array(model_h5['label']).reshape((-1,1)),
                np.array(model_h5['pid']),
                h5_filename)


def divide_data(h5file, ratio=0.7):
    data = h5py.File(h5file)
    length = len(data['data'])

    indices = random.sample(range(length), int(length*0.7))
    indices.sort()

    train_set = {}
    test_set = {}

    train_set['data'] = data['data'][indices, :, :]
    train_set['label'] = data['label'][indices, :]
    train_set['pid'] = data['pid'][indices, :]

    test_set['data'] = []
    test_set['label'] = []
    test_set['pid'] = []

    for i in range(length):
        if i not in indices:
            test_set['data'].append(data['data'][i, :, :])
            test_set['label'].append(data['label'][i, :])
            test_set['pid'].append(data['pid'][i, :])

    save_h5_seg(train_set['data'],
                train_set['label'],
                train_set['pid'],
                'train_obj.h5')

    save_h5_seg(np.array(test_set['data']),
                np.array(test_set['label']).reshape((-1,1)),
                np.array(test_set['pid']),
                'test_obj.h5')

def delete_cat(categories, data_file):
    data = h5py.File(data_file)
    new_data = {}
    indices = []
    for i in range(len(data['data'])):
        if data['label'][i] not in categories:
            indices.append(i)
        else:
            print data['label'][i]

    new_data['data'] = data['data'][indices, :, :]
    new_data['label'] = data['label'][indices, :]
    new_data['pid'] = data['pid'][indices, :]
    
    save_h5_seg(new_data['data'],
                new_data['label'],
                new_data['pid'],
                'new_' + data_file)

def rotate_point_cloud_h5(h5_file):


def rotate_point_cloud(batch_data, axis='z'):
    """ Randomly rotate the point clouds to augument the dataset
        rotation is per shape based along up direction
        Input:
          BxNx3 array, original batch of point clouds
        Return:
          BxNx3 array, rotated batch of point clouds
    """
    rotated_data = np.zeros(batch_data.shape, dtype=np.float32)
    for k in range(batch_data.shape[0]):
        rotation_angle = np.random.uniform() * 2 * np.pi
        cosval = np.cos(rotation_angle)
        sinval = np.sin(rotation_angle)

        if (axis == 'x'):
            rotation_matrix = np.array([[1, 0, 0],
                                        [0, cosval, -sinval],
                                        [0, sinval, cosval]])
        elif (axis == 'y'):
            rotation_matrix = np.array([[cosval, 0, sinval],
                                        [0, 1, 0],
                                        [-sinval, 0, cosval]])
        else:
            rotation_matrix = np.array([[cosval, -sinval, 0],
                                        [sinval, cosval, 0],
                                        [0, 0, 1]])        

        shape_pc = batch_data[k, ...]
        rotated_data[k, ...] = np.dot(shape_pc.reshape((-1, 3)), rotation_matrix)
    return rotated_data



if __name__ == '__main__':
    # make_h5('./model_2048', './seg_2048', './label.txt', 'origin.h5')
    # divide_data('./origin.h5')
    file_list = os.listdir('.')
    for file in file_list:
        if '.h5' in file:
            delete_cat([4, 15], file)









