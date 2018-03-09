#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-28'
"""
#调用方法:
#import  global_var as gl
#gl.table_name = 'hhh'

DB_CONFIG = {}

table_name = '' # 表名

fields_diff_name = ''   # 必要标签，标记值不同的字段
fields_only_name = ''   # 必要标签，虚拟唯一性约束
fields_same_name = ''   # 可选标签，标记值相同的字段
fields_same_value= ''   # 可选标签，标记值相同的字段的值

fields_name = ''        #  diff+same字段

file_name = ''   # 正处理的文件名
data = ''        # 等待处理的数据
data_list = []   # 存储数据列表diff
msg = ''		  # 消息存储用
sql_list = []    # 存储sql执行队列
fields_dict ={}  # 存储字段名和值的字典
		# 存储字段名和自增值的字典，由于每个文件Build_Sql都要重来，所以放那儿不合适
		# 考虑到多个表中可能有相同名字段 ，键名定义为: table_field 结构
auto_increment_dict ={}
