import h5py
import plyfile
import os
import get_object_from_scene as ld # This line will change to a new util file.

# Get category names in pointnet.
def read_name(path):
	file = open(path)
	nameList = []
	for line in file:
		tmpLine = line.split('_')
		line = ''
		for i in tmpLine:
			line = line + i
		nameList.append(line[:-1])
	return nameList

def read_taxonomy(path):
	taxonomy = ld.load_json_file(path)
	dictName = {}
	for element in taxonomy:
		names = element['name']
		names = name.split(',')
		for n in names:
			dictName[n] = element['synsetId']
	return dictName



def transform_ply_to_h5(path, nameList):
	dictName = read_taxonomy(path + 'taxonomy.json')
	nameList = read_name(path + 'shape_names.txt')
	if not (os.path.exits('./ShapeNet_h5')):
		os.mkdir('./ShapeNet_h5')

	for name in nameList:
		if (dictName.has_key(name)):
			synsetId = dictName[name]
