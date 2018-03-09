#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-28'
"""
from common import prase,check,config
import  common.global_var as gl

def load():
	"""载入各种标签的值,并且检查错误"""
	gl.DB_CONFIG = get_connect_dict(gl.file_name, gl.data)

	gl.table_name = prase.prase_table(gl.data)
	if gl.table_name == '':
		gl.msg = gl.file_name +':没有table标签。\n'
		return False

	gl.fields_diff_name = prase.prase_fields_value_diff(gl.data)
	if gl.fields_diff_name == '':
		gl.msg = gl.file_name +':没有fields_value_diff标签。\n'
		return False

	gl.fields_only_name = prase.prase_fields_value_only(gl.data)
	if gl.fields_only_name == '':
		gl.msg = gl.file_name +':没有fields_value_only标签。\n'
		return False

	gl.fields_same_name, gl.fields_same_value = prase.prase_fields_value_same(gl.data)

	# 需要对这些字段进行合法性检查：diff 和 same 不能有交集，only集合无要求，它可以是任意字段
	# 集合是无序的，不考虑用它，用逗串吧:)

	count_same = 0
	if gl.fields_same_name != '':  #有可选标签
		if check.is_fields_cross(gl.fields_diff_name, gl.fields_same_name):
			gl.msg = gl.file_name +': diff 和 same中出现重复字段，这不被允许'
			return False
		gl.fields_name = gl.fields_diff_name + ',' + gl.fields_same_name
	else:
		gl.fields_name = gl.fields_diff_name

	fields_diff_count = gl.fields_diff_name.count(',') + 1  # diff 字段数量

	# 现在检查 表 是否存在
	if not check.is_table_exist(gl.table_name):
		gl.msg = gl.file_name + ': table标签指定表名不存在，请检查本文件。\n' + gl.msg
		return False

	# 现在检查 字段 是否存在
	if not check.is_fields_exist(gl.table_name,gl.fields_name):
		gl.msg = gl.file_name + gl.msg
		return False
	if not check.is_tilde_count_ok(gl.data, fields_diff_count):
		gl.msg = gl.file_name + ': 波浪线~数量不对，请检查本文件。\n'
		return False

	#读入主体数据，就是~波浪符~中间的那些所有
	gl.data_list = prase.prase_data(gl.data, fields_diff_count)
	if gl.data_list:
		return True
	else:
		gl.msg = gl.file_name + ': 没有需要导入的数据。\n'
		return False


def get_connect_dict(fileName, import_file_text):
	conn_json = prase.prase_server(import_file_text)
	return config.open_accordant_config(conn_json)

