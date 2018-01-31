#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-25'
"""

import os, sys
import chardet

def get_file_encoding(file_path):
	if not os.path.exists(file_path):  # 文件存在
		sys.exit(0)
	f = open(file_path, 'rb')
	data = f.read()
	cd = chardet.detect(data)
	# print(cd["encoding"])
	return cd["encoding"]


# read data from file
def read_file(file_path):
	"""
	读文件
	:rtype: object
	:param file_path: 路径
	:return:文件内容
	"""
	f = open(file_path, "r", encoding=get_file_encoding(file_path))
	data = f.read()
	f.close()
	return data

# write data to file
def write_file(file_path, data, mode):
	"""
	写文件
	:param file_path: 文件名
	:param data: 数据
	:param mode: "w"重写，"a" 追加写入
	:return:
	"""
	fd = open(file_path, mode, encoding='utf-8')
	fd.write(data)
	fd.close()

def delete_file(file_path):
	if os.path.exists(file_path):
		os.remove(file_path)

# 文件长度相同，内容不一样相同，所以本模块，没用
class file_struct:
	def __init__(self):
		self.name = ''  # 名称
		self.fullPath = ''  # 全路径
		self.size = 0  # 尺寸

#  Returns all the files in a directory as a list
def enumerate_files(path):
	file_collection = []
	ignore_dirs = [".hg", ".svn", ".git", ".tox", "__pycache__", "env", "venv"]
	for root, dirs, files in os.walk(path):
		dirs[:] = [f for f in dirs if f not in ignore_dirs]
		for file in files:
			fc = file_struct()
			full_path = os.path.join(root, file)
			fc.name = file
			fc.size = os.path.getsize(full_path)
			fc.fullPath=full_path
			file_collection.append(fc)
	return file_collection
