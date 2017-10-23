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

if __name__ == "__main__":

