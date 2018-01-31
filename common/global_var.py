#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-28'
"""
from common import sqlmanager

class GlobalVar:
	def __init__(self):
		self.DB_CONFIG = {}

		self.table_name = '' # 表名

		self.fields_diff_name = ''   # 必要标签，标记值不同的字段

		self.fields_same_name = ''   # 可选标签，标记值相同的字段
		self.fields_same_value= ''   # 可选标签，标记值相同的字段的值

		self.inset_policy  = 'ignore'   # 可选标签，出现重复处理方式：ignore,update

		self.fields_name = ''        #  diff+same字段

		self.file_name = ''   # 正处理的文件名
		self.data = ''        # 等待处理的数据
		self.data_list = []   # 存储数据列表diff
		self.msg = ''		  # 消息存储用
		self.sql_list = []    # 存储sql执行队列
		self.fields_dict ={}  # 存储字段名和值的字典
		# 存储字段名和自增值的字典，由于每个文件Build_Sql都要重来，所以放那儿不合适
		# 考虑到多个表中可能有相同名字段 ，键名定义为: table_field 结构
		self.auto_increment_dict ={}
