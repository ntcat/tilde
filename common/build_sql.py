#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-28'
"""
from common import files ,decl_func

def fill_row_to_fields_dict(tuple_row,gv):
	"""
	填写一行数据到字典中
	:param tuple_row: as (,,) tuple
	:return:
	"""
	diff_sp = gv.fields_diff_name.split(',')
	for i in range(len(diff_sp)):
		gv.fields_dict[diff_sp[i]] = tuple_row[i]

	same_name_sp = gv.fields_same_name.split(',')
	same_value_sp = gv.fields_same_value.split(',')

	for i in range(len(same_name_sp)):
		gv.fields_dict[same_name_sp[i]] = same_value_sp[i]  #get templete
		gv.fields_dict[same_name_sp[i]] = \
			decl_func.trans_decl_func_to_value(gv,same_name_sp[i]) # templete to value

def build_insert_ignore(gv):
	"""建立插入决策之我跳跳跳SQL语句"""
	set_str = ''
	update_str = ''
	at_fields = ''
	fs_sp = gv.fields_name.split(',')

	for key in fs_sp:
		set_str += 'set @v_' + key + '="' + str(gv.fields_dict[key]) + '";\n'
		update_str += ',' + str(gv.fields_dict[key]) + '=@v_' + key
		at_fields += ',' + '@v_' + key

	return '{setStr}Insert ignore into {table}({fields}) values({atFields});'.format(setStr=set_str,
		table=gv.table_name, fields=gv.fields_name, atFields=at_fields[1:])

def build_insert_update(gv):
	"""建立插入决策之我更新SQL语句"""
	set_str = ''
	update_str = ''
	at_fields = ''
	fs_sp = gv.fields_name.split(',')

	for key in fs_sp:
		set_str += 'set @v_' + key + '="' + gv.fields_dict[key] + '";\n'
		update_str += ',' + key + '=@v_' + key
		at_fields += ',' + '@v_' + key

	return '{setStr}Insert into {table}({fields}) values({atFields}) on duplicate key UPDATE {updateStr};'.format(
		setStr=set_str, table=gv.table_name, fields=gv.fields_name, atFields=at_fields[1:],
		fieldsName=gv.fields_name, updateStr=update_str[1:])

def build_sql_list(gv):
	"""重建sql执行队列，for output export.sql or excute
	build_fields_dict_keys
	dict = diff + same"""
	diff_sp = gv.fields_diff_name.split(',')
	gv.fields_dict = dict.fromkeys(diff_sp, '')
	gv.sql_list.clear()
	for row in gv.data_list:  # as [(,),(,)...]
		fill_row_to_fields_dict(row,gv)  #填入正式、主题、body、反正就是~中间的~数据,同时处理声明函数
		if gv.inset_policy == 'update':
			gv.sql_list.append(build_insert_update(gv))
		else:
			gv.sql_list.append(build_insert_ignore(gv))

def export_sql_list(mode,gv):
	"""输出SQL队列到export.sql"""
	out_str = ''
	for sql in gv.sql_list:
		out_str += sql + '\n\n'

	files.write_file('export.sql', out_str, 'a+' if mode == 'append' else 'w')

