#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-28'
"""
from common import prase,check,config

def load(gv):
	"""载入各种标签的值,并且检查错误"""
	gv.DB_CONFIG = get_connect_dict(gv.file_name, gv.data)

	gv.table_name = prase.prase_table(gv.data)
	if gv.table_name == '':
		gv.msg = gv.file_name +':没有table标签。\n'
		return False

	gv.fields_diff_name = prase.prase_fields_value_diff(gv.data)
	if gv.fields_diff_name == '':
		gv.msg = gv.file_name +':没有fields_value_diff标签。\n'
		return False

	gv.fields_same_name, gv.fields_same_value = prase.prase_fields_value_same(gv.data)
	gv.inset_policy = prase.prase_inset_policy(gv.data)

	count_same = 0
	if gv.fields_same_name != '':
		if check.is_fields_cross(gv.fields_diff_name, gv.fields_same_name):
			gv.msg = gv.file_name +': diff 和 same中出现重复字段，这不被允许'
			return False
		gv.fields_name = gv.fields_diff_name + ',' + gv.fields_same_name
	else:
		gv.fields_name = gv.fields_diff_name

	gv.fields_diff_count = gv.fields_diff_name.count(',') + 1  # diff 字段数量
	gv.fields_same_count = gv.fields_same_name.count(',') + 1   # same 字段数量
	gv.fields_count      = gv.fields_diff_count  + gv.fields_same_count


	if not check.is_tilde_count_ok(gv.data, gv.fields_diff_count):
		gv.msg = gv.file_name + ': 波浪线~数量不对，请检查本文件。\n'
		return False

	#读入主体数据，就是~波浪符~中间的那些所有
	gv.data_list = prase.prase_data(gv.data, gv.fields_diff_count)
	if gv.data_list:
		return True
	else:
		gv.msg = gv.file_name + ': 没有需要导入的数据。\n'
		return False


def get_connect_dict(fileName, import_file_text):
	conn_json = prase.prase_server(import_file_text)
	return config.open_accordant_config(conn_json)

