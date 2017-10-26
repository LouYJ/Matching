# _*_ coding:utf-8 _*_ 

import os

def get_object_path(path):
	dirList = os.listdir(path)
	objList = []
	for d in dirList:
		file = path + d + '/models/model_normalized.obj'
		if (os.path.exists(file)):
			objList.append(file)
	return objList

def traverse_one_category(objList, srcobj_path):
	command = './Super4PCS/build/install/bin/Super4PCS -i '
	command = command + srcobj_path
	cnt = 0
	if not (os.path.exists('../results/')):
		os.system('mkdir ../results')
	for i in objList:
		command_tmp = command + ' ' + i + ' -o 0.7 -d 0.01 -t 1000 -n 200 -r ../results/result' + str(cnt) +'.obj -m ' + '../results/mat_super4pcs_' + str(cnt) + '.txt'
		cnt = cnt + 1
		os.system(command_tmp)
	
def main():
	objList = get_object_path('../ShapeNetCore.v2/02818832/')
	traverse_one_category(objList, './objects/obj37_bed.obj')


if __name__ == "__main__":
	main()
