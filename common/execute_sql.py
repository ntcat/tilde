#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-29'
"""
from common import decl_func,sqlmanager

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
	args = []
	s_fields = ''   # store as (%s,%s,%s,%s,%s...)
	fs_sp = gv.fields_name.split(',')

	for key in fs_sp:
		args.append(str(gv.fields_dict[key]))
		s_fields += ',%s'
	return 'insert ignore into {table}({fields}) values({sFields})'.format(
		table=gv.table_name, fields=gv.fields_name, sFields=s_fields[1:]),tuple(args)

def build_insert_update(gv):
	"""建立插入决策之我更新SQL语句"""
	args = []
	update_str = ''
	s_fields = ''   # store as (%s,%s,%s,%s,%s...)
	fs_sp = gv.fields_name.split(',')

	for key in fs_sp:
		update_str += ',' + key + '=%s'
		args.append(str(gv.fields_dict[key]))
		s_fields += ',%s'

	args.extend(args)
	return 'Insert into {table}({fields}) values({sFields}) on duplicate key UPDATE {updateStr};'.format(
		table=gv.table_name, fields=gv.fields_name, sFields=s_fields[1:], updateStr=update_str[1:]),tuple(args)

def execute_sql_list(gv):
	"""重建sql执行队列，for output export.sql or excute
	build_fields_dict_keys
	dict = diff + same"""
	diff_sp = gv.fields_diff_name.split(',')
	gv.fields_dict = dict.fromkeys(diff_sp, '')
	gv.sql_list.clear()
	affect_rows=0
	db = sqlmanager.SQLManager(gv.DB_CONFIG)
	sql=''
	args = None
	for row in gv.data_list:  # as [(,),(,)...]
		fill_row_to_fields_dict(row,gv)  #填入正式、主题、body、反正就是~中间的~数据,同时处理声明函数
		if gv.inset_policy == 'update':
			sql,args = build_insert_update(gv)
		else:
			sql,args = build_insert_ignore(gv)
		db.modify(sql,args)
		affect_rows += db.rows_affected
	db.close()
	return affect_rows


