import numpy as np
import json
import csv
import os
import pandas as pd
from plyfile import PlyData, PlyElement

# This file is used to extract all objects from one scene

def load_json_file(path):
	with open(path) as json_file:
		jsondata = json.load(json_file)
		return jsondata

def dump_json_file(data, path):
	with open(path, "w") as json_file:
		json.dump(data, json_file, indent=4)

def read_ply_file(path):
	with open(path, 'rb') as ply_file:
		plydata = PlyData.read(ply_file)
		vertex = plydata['vertex']
		face = plydata['face']
		return plydata, vertex, face

def create_ply_file(vertex, path, text=False):
	vertex = np.array(vertex, dtype=[('x', 'f4'), ('y', 'f4'), ('z', 'f4'), ('red', 'u1'), ('green', 'u1'), ('blue', 'u1'), ('alpha', 'u1'), ('label', 'u4')])
	el = PlyElement.describe(vertex, 'vertex', comments=[])
	PlyData([el], text).write(path)

# Qi 17.10.19
def create_obj_file(vertex, path, text=False):
	#print vertex
	vertex = np.array(vertex, dtype=[('x', 'f4'), ('y', 'f4'), ('z', 'f4'), ('red', 'u1'), ('green', 'u1'), ('blue', 'u1'), ('alpha', 'u1'), ('label', 'u4')])
	#print vertex[0][0]
	#print vertex
	print len(vertex)
	print path
	f = open(path,'w+')
	f.write('# ' + path + '\n')
	for i in range(0, len(vertex)):
		#f.write('vertex' + '\n')
		f.write('v ' + str(vertex[i][0]) + ' ' + str(vertex[i][1]) + ' ' + str(vertex[i][2]) + '\n')
	#time.sleep(100)
	f.close()
	return

def read_tsv_file(path):
	tsv_data = pd.read_csv(path, sep='\t')
	return tsv_data

def get_segments(segsjson):
	segIndices = segsjson['segIndices']
	segments = {}
	for v in segIndices:
		segments[v] = []

	for i in range(len(segIndices)):
		segments[segIndices[i]].append(i)
	return segments

def get_object(seglist, segments, vertex):
	tmp = []
	obj = []
	for seg in seglist:
		tmp.extend(segments[seg])
	# print (tmp)
	for v in tmp:
		obj.append(vertex[v])
	return obj

def find_synset(column, row, scannet_lables):
	offset = scannet_lables[scannet_lables[column] == row]['synsetoffset']
	return int(offset)

def get_objects_from_scene(sceneId, fObj = False, fPly = False):
	segsjson = load_json_file('scene' + sceneId + '_vh_clean_2.0.010000.segs.json')
	aggjson = load_json_file('scene' + sceneId + '_vh_clean.aggregation.json')
	_, vertex, face = read_ply_file('scene' + sceneId + '_vh_clean_2.labels.ply')
	
	segments = get_segments(segsjson)
	segGroups = aggjson['segGroups']
	for id in segGroups:
		seglist = id['segments']
		obj = get_object(seglist, segments, vertex)

		if (fObj):
			if not (os.path.exists('./objects/')):
				os.mkdir('./objects/')
			create_obj_file(obj, './objects/obj' + str(id['id']) + '_'+ id['label'] +'.obj', True)
		if (fPly):
			if not (os.path.exists('./objects_ply/')):
				os.mkdir('./objects_ply')
			# print (obj)
			create_ply_file(obj, './objects_ply/obj' + str(id['id']) + '_'+ id['label'] +'.ply', True)



if __name__ == "__main__": 
	get_objects_from_scene('0000_00', True, True)
	offset = scannet_lables[scannet_lables['category'] == category]['synsetoffset']
	return int(offset)
'''
def get_seg_part(plydata):
	vertex = plydata['vertex']

	# print (vertex)
	seg = {}
	for v in vertex.data:
		seg[v[7]] = []

	for v in vertex.data:
		seg[v[7]].append(v)
	return seg

def get_object_seg(jsondata, plydata):
	face = plydata['face']
	vertex = plydata['vertex']
	segGroups = jsondata['segGroups']

	seg = {}
	seg['sceneId'] = jsondata['sceneId']
	seg['segGroups'] = []

	for ob in segGroups:
		tmp_seg = {}
		tmp_seg['id'] = ob['id']
		tmp_seg['objectId'] = ob['objectId']
		tmp_seg['label'] = ob['label']
		tmp_seg['vertices'] = []

		for face_id in ob['segments']:
			for v in face[face_id][0]:
				tmp_seg['vertices'].append(vertex[v])

		seg['segGroups'].append(tmp_seg)
	return seg

def main():
	plydata = read_ply_file('scene0000_00_vh_clean_2.labels.ply')
	jsondata = load_json_file('scene0000_00_vh_clean.aggregation.json')

	seg2 = get_seg_part(plydata)
	# print (seg2.keys())
	# print (seg2[18])
	create_ply_file(seg2[21], 'out21.ply', True)
	# print ("\n-----------------\n")
	# print (seg['segGroups'][47]['vertices'])
	# create_ply_file(seg['segGroups'][47]['vertices'], 'out47.ply', text = True)
'''









	