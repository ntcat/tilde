#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-26'
"""
from common import sqlmanager
import  common.global_var as gl

def is_fields_cross(fields_diff, fields_same):
	"""检查是否有字段交叉重叠"""
	same_sp = fields_same.split(',')
	diff_sp = fields_diff.split(',')
	for ss in same_sp:
		if ss in diff_sp:
			return True
	return False

def is_tilde_count_ok(content,field_count):
	"""检查格式。就是查~数量 对不对， tilde_count = n*(field_count+1)"""
	tilde_count = content.count('~')
	return tilde_count%(1+field_count)==0

def is_table_exist(table_name):
	"""检查字段是否存在"""
	try:
		sql = 'SELECT table_name FROM information_schema.TABLES WHERE table_name ="{tb}";'\
			.format(tb=table_name)
		db = sqlmanager.SQLManager(gl.DB_CONFIG)
		row = db.get_one(sql)
		db.close()
		if len(row) > 0:
			return True if row['table_name'] == table_name else False
		else:
			return False
	except Exception as e:
		print(gl.file_name, e)
		print('表或字段可能不存在。')
		return False

def is_fields_exist(table_name,fields_name):
	"""检查字段是否存在,fields_name格式类似：'id,name,title' """
	try:
		f_sp = fields_name.split(',')
		f_s ='","'.join(f_sp)
		sql = 'SELECT column_name FROM information_schema.COLUMNS WHERE table_name ="{tb}" AND column_name in ("{fd}");'\
			.format(fd=f_s, tb=table_name)
		db = sqlmanager.SQLManager(gl.DB_CONFIG)
		rows = db.get_list(sql)
		db.close()
		gl.msg =''
		ret = True
		if len(rows) > 0:
			rows_value =[r['column_name'] for r in rows]
			rows_set = set(rows_value)
			fields_set = set(f_sp)
			have_no_fields = fields_set-rows_set
			if len(have_no_fields)>0:
				gl.msg +=' :表"{tb}"中不存在字段"{fd}"\n'.format(tb=table_name,fd=','.join(have_no_fields))
				ret = False
			return ret
		else:
			return False
	except Exception as e:
		gl.msg = e
		return False


