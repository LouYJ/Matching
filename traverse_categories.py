import os
import numpy as np
from operator import itemgetter

def get_object_path(path):
	dirList = os.listdir(path)
	objList = []
	for d in dirList:
		file = path + d + '/models/model_normalized.obj'
		if (os.path.exists(file)):
			objList.append(file)
	return objList

def run_super4pcs(objList, srcobj_path, n):
	command = './Super4PCS/build/install/bin/Super4PCS -i '
	command = command + srcobj_path
	cnt = 0
	if not (os.path.exists('../results/')):
		os.system('mkdir ../results')
	for i in objList:
		command_tmp = command + ' ' + i + ' -o 0.7 -d 0.01 -t 1000 -n ' + str(n) + ' -m ' + '../results/mat_super4pcs_' + str(cnt) + '.txt'
		cnt = cnt + 1
		os.system(command_tmp)

def traverse_one_category(srcobj_path):
	file_object = open(srcobj_path, 'r')
	tmp = file_object.readlines()
	file_object.close()
	if (tmp == '#No corresponding synsetoffset\n'):
		print (tmp[1:])
		return False
	offset = tmp[5][1:9]
	objList = get_object_path('../ShapeNetCore.v2/' + offset + '/')
	n_point = len(tmp)/2
	run_super4pcs(objList, srcobj_path, n_point)

	return offset

def topn_objects(synsetoffset, n = 5):
	file_scores = open('../results/scores.txt')
	scores = file_scores.readlines()

	for i in range(len(scores)):
		l = len(scores[i])
		score = float(scores[i][:l-1])
		scores[i] = [score]
		scores[i].append(i)

	# Sort list scores to get top5 scores' indices.
	sorted(scores, key=itemgetter(0), reverse=True)
	dirList = os.listdir('../results/')

	# This list is used to record top5 objects indices. 
	final_obj = [] 
	for i in range(n):
		index = scores[i][1]
		dirt = dirList[index]
		num = dirt[14:]
		l = len(num)
		num = num[:l-4]
		final_obj.append(int(num))

	dirList = os.listdir('../ShapeNetCore.v2/' + offset + '/')
	topn_objpath = []
	for i in range(n):
		topn_objpath.append(dirList[final_obj[i]])

	return topn_objpath, final_obj, offset

def write_top5(topn_objpath, offset):
	f = open('../results/top5_'+offset+'.txt', w)
	for i in topn_objpath:
		f.write(i + '\n')
		
def main():
	objList = get_object_path('../ShapeNetCore.v2/02818832/')
	traverse_one_category(objList, './objects/obj37_bed.obj')


if __name__ == "__main__":
	offset = traverse_one_category('./objects/obj37_bed.obj')
	topn_objpath, final_obj, offset = topn_objects(offset)
	write_top5(topn_objpath, offset)
