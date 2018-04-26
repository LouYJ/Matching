import os

def change_name(name_file, obj_path):
	nf = open(name_file)
	name = [line.split()[0] for line in nf]
	nf.close()

	obj_len = len(name)
	obj_list = os.listdir(obj_path)
	obj_list.sort()
	for obj_idx in range(obj_len):
		print (os.path.join(obj_path, obj_list[obj_idx]))
		print (os.path.join(obj_path,name[obj_idx]))
		print ('--------------------------------------')
		os.rename(os.path.join(obj_path, obj_list[obj_idx]), os.path.join(obj_path,name[obj_idx][:-3]+'obj'))


if __name__ == '__main__':
	change_name('testing_file_yujing.txt', 'test_results')
