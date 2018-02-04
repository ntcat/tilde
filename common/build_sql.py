#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-28'
"""
from common import files ,decl_func
import  common.global_var as gl

def fill_row_to_fields_dict(tuple_row):
	"""
	填写一行数据到字典中
	:param tuple_row: as (,,) tuple
	:return:
	"""
	diff_sp = gl.fields_diff_name.split(',')
	for i in range(len(diff_sp)):
		gl.fields_dict[diff_sp[i]] = tuple_row[i]

	same_name_sp = gl.fields_same_name.split(',')
	same_value_sp = gl.fields_same_value.split(',')

	for i in range(len(same_name_sp)):
		gl.fields_dict[same_name_sp[i]] = same_value_sp[i]  #get templete
		gl.fields_dict[same_name_sp[i]] = \
			decl_func.trans_decl_func_to_value(same_name_sp[i]) # templete to value

def build_insert_ignore():
	"""建立插入决策之我跳跳跳SQL语句"""
	set_str = ''
	update_str = ''
	at_fields = ''
	fs_sp = gl.fields_name.split(',')

	for key in fs_sp:
		set_str += 'set @v_' + key + '="' + str(gl.fields_dict[key]) + '";\n'
		update_str += ',' + str(gl.fields_dict[key]) + '=@v_' + key
		at_fields += ',' + '@v_' + key

	return '{setStr}Insert ignore into {table}({fields}) values({atFields});'.format(setStr=set_str,
		table=gl.table_name, fields=gl.fields_name, atFields=at_fields[1:])

def build_insert_update():
	"""建立插入决策之我更新SQL语句"""
	set_str = ''
	update_str = ''
	at_fields = ''
	fs_sp = gl.fields_name.split(',')

	for key in fs_sp:
		set_str += 'set @v_' + key + '="' + gl.fields_dict[key] + '";\n'
		update_str += ',' + key + '=@v_' + key
		at_fields += ',' + '@v_' + key

	return '{setStr}Insert into {table}({fields}) values({atFields}) on duplicate key UPDATE {updateStr};'.format(
		setStr=set_str, table=gl.table_name, fields=gl.fields_name, atFields=at_fields[1:],
		fieldsName=gl.fields_name, updateStr=update_str[1:])

def build_sql_list():
	"""重建sql执行队列，for output export.sql or excute
	build_fields_dict_keys
	dict = diff + same"""
	diff_sp = gl.fields_diff_name.split(',')
	gl.fields_dict = dict.fromkeys(diff_sp, '')
	gl.sql_list.clear()
	for row in gl.data_list:  # as [(,),(,)...]
		fill_row_to_fields_dict(row)  #填入正式、主题、body、反正就是~中间的~数据,同时处理声明函数
		if gl.inset_policy == 'update':
			gl.sql_list.append(build_insert_update())
		else:
			gl.sql_list.append(build_insert_ignore())

def export_sql_list(mode):
	"""输出SQL队列到export.sql"""
	out_str = ''
	for sql in gl.sql_list:
		out_str += sql + '\n\n'

	files.write_file('export.sql', out_str, 'a+' if mode == 'append' else 'w')

