#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-03-09'
"""
from common import files ,decl_func
from common import decl_func,sqlmanager
import  common.global_var as gl

def fill_row_to_fields_dict(tuple_row):
	"""
	填写一行数据到字典中
	:param tuple_row: as (,,) tuple
	:return:
	"""
	diff_sp = gl.fields_diff_name.split(',')
	for i in range(len(diff_sp)):
		tr = tuple_row[i].replace('"','“')
		tr = tr.replace("'","’")
		tr = tr.replace(";", "；")
		gl.fields_dict[diff_sp[i]] = tr

	same_name_sp = gl.fields_same_name.split(',')
	same_value_sp = gl.fields_same_value.split(',')

	for i in range(len(same_name_sp)):
		gl.fields_dict[same_name_sp[i]] = same_value_sp[i]  #get templete
		gl.fields_dict[same_name_sp[i]] = \
			decl_func.trans_decl_func_to_value(same_name_sp[i]) # templete to value
def build_insert():
	"""建立插入之我跳跳跳SQL语句"""
	set_str = ''
	at_fields = ''
	where_str_only =''
	fs_sp = gl.fields_name.split(',')

	for key in fs_sp:
		set_str += 'set @v_' + key + '="' + str(gl.fields_dict[key]) + '";\n'
		at_fields += ',' + '@v_' + key

	only_name_sp = gl.fields_only_name.split(',')
	for key in only_name_sp:
		where_str_only += ' AND ' +  key + '=@v_' + key

	return '{setStr}Insert into {table}({fields}) SELECT {atFields} from DUAL WHERE NOT EXISTS(SELECT {only_name} from {table} WHERE {only_where})'.format(setStr=set_str,
		table=gl.table_name, fields=gl.fields_name, atFields=at_fields[1:],only_name=gl.fields_only_name,only_where=where_str_only[5:])
def dict_has_key_and_value_include_str(the_dict,key,str):
	"""指定字典中包括键，并且键值包含某个字符片段"""
	if the_dict.__contains__(key):
		if str in the_dict[key]:
			return True
	return False
def build_update():
	"""建立更新SQL语句"""
	try:
		set_str = ''
		update_str = ''
		where_str_only =''
		same_format_dict={}
		fs_sp = gl.fields_name.split(',')
		only_name_sp = gl.fields_only_name.split(',')
		same_name_sp = gl.fields_same_name.split(',')
		same_value_sp = gl.fields_same_value.split(',')

		for i in range(len(same_name_sp)):
			same_format_dict[same_name_sp[i]] = same_value_sp[i]  # get templete

		for key in fs_sp:
			set_str += 'set @v_' + key + '="' + str(gl.fields_dict[key]) + '";\n'
			#插入策略中，不能也不需要更新的字段包括：fields_value_only标签中指定的值 ，{AUTO_INCREMENT}、{UUID}等函数值。
			if not dict_has_key_and_value_include_str(same_format_dict,key, '{') and not key in only_name_sp:
				update_str += ',' + key + '=@v_' + key

		for key in only_name_sp:
			where_str_only += ' AND ' + key + '=@v_' + key

		return '{setStr}UPDATE {table} SET {updateStr} WHERE {only_where};'.format(
			setStr=set_str, table=gl.table_name, updateStr=update_str[1:], only_where=where_str_only[5:])
	except Exception as e:
		gl.msg = str(e)
		return False
def build_delete():
	"""建立删除SQL语句"""
	try:
		set_str = ''
		where_str_only =''
		fs_sp = gl.fields_name.split(',')
		only_name_sp = gl.fields_only_name.split(',')
		for key in fs_sp:
			if key in only_name_sp:
				set_str += 'set @v_' + key + '="' + str(gl.fields_dict[key]) + '";\n'
				where_str_only += ' AND ' + key + '=@v_' + key

		return '{setStr}DELETE FROM {table} WHERE {only_where};'.format(
			setStr=set_str, table=gl.table_name,  only_where=where_str_only[5:])
	except Exception as e:
		gl.msg = str(e)
		return False
def build_sql_list(action):
	"""重建sql执行队列，for output export.sql or excute
	build_fields_dict_keys
	dict = diff + same"""
	diff_sp = gl.fields_diff_name.split(',')
	gl.fields_dict = dict.fromkeys(diff_sp, '')
	gl.sql_list.clear()
	for row in gl.data_list:  # as [(,),(,)...]
		fill_row_to_fields_dict(row)  #填入正式、主题、body、反正就是~中间的~数据,同时处理声明函数
		if action == 'insert':
			gl.sql_list.append(build_insert())
		elif action == 'update':
			gl.sql_list.append(build_update())
		elif action == 'delete':
			gl.sql_list.append(build_delete())

def export_sql_list(mode):
	"""输出SQL队列到export.sql"""
	out_str = ''
	for sql in gl.sql_list:
		out_str += sql + '\n\n'

	files.write_file('export.sql', out_str, 'a+' if mode == 'append' else 'w')

# 替换顺序很重要，先替换长的变量名，然后短的，防止出现：替换@v_author时把 @v_author_id变量也替换了
def sqls_to_sql(sqls):
	"""把输出格式的SQL语句，转换成一行格式的SQL语句"""
	set_list = []
	ret_sql = ''
	sql_sp =sqls.split('";\n')  #光用;容易误判
	for sql in sql_sp:
		if sql[:3]=='set':  #set @v_id="741";
			set_sp = sql[4:].split('="')
			set_list.append([set_sp[0],set_sp[1]])
		else:
			ret_sql = sql

	#按二维数组的第一列的长度，反向排序
	set_list.sort(reverse=True,key=lambda x:len(x[0]))
	for i in range(len(set_list)):
		ret_sql = ret_sql.replace(set_list[i][0],'"'+ set_list[i][1] + '"')
	return ret_sql

def execute_sql_list(action):
	"""重建sql执行队列，for output export.sql or excute
	build_fields_dict_keys
	dict = diff + same"""
	sql=''
	try:
		diff_sp = gl.fields_diff_name.split(',')
		gl.fields_dict = dict.fromkeys(diff_sp, '')
		gl.sql_list.clear()
		affect_rows=0
		db = sqlmanager.SQLManager(gl.DB_CONFIG)
		args = None
		for row in gl.data_list:  # as [(,),(,)...]
			fill_row_to_fields_dict(row)  #填入正式、主题、body、反正就是~中间的~数据,同时处理声明函数
			if action == 'insert':
				sql = build_insert()
			elif action == 'update':
				sql = build_update()
			elif action == 'delete':
				sql = build_delete()
			sql=sqls_to_sql(sql)
			db.modify(sql,args)
			affect_rows += db.rows_affected
		db.close()
		return affect_rows
	except Exception as e:
		print(str(e))
		print(sql)
		return False