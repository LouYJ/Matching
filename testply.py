import numpy as np
import json
import csv
import pandas as pd
from plyfile import PlyData, PlyElement

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
		return plydata

def create_ply_file(vertex, path, text=False):
	vertex = np.array(vertex, dtype=[('x', 'f4'), ('y', 'f4'), ('z', 'f4'), ('red', 'u1'), ('green', 'u1'), ('blue', 'u1'), ('alpha', 'u1'), ('label', 'u4')])
	el = PlyElement.describe(vertex, 'vertex', comments=[])
	PlyData([el], text).write(path)

def read_csv_file(path):
	df = pd.read_csv(path, sep='\t')
	pass

def get_segments(segsjson):
	segIndices = segsjson['segIndices']
	segments = {}
	for v in segIndices:
		segs[v] = []

	for i in range(len(segIndices)):
		segs[segIndices[i]].append(i)
	return segments

def get_object(seglist, segments, vertex):
	tmp = []
	obj = []
	for seg in seglist:
		tmp.extend(segmentsp[seg])
	for v in tmp:
		obj.append(vertex[tmp])

def get_seg_part(plydata):
	vertex = plydata['vertex']

	# print (vertex)
	seg = {}
	for v in vertex.data:
		seg[v[7]] = []

	for v in vertex.data:
		seg[v[7]].append(v)
	return seg


	


'''
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
'''
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

if __name__ == "__main__": 
	main()

	# read_csv_file('/Users/Loj/Desktop/scannet-labels.combined.tsv')








	