#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-26'
"""
import pymysql

class SQLManager:
	def __init__(self, dbCnfig):
		self.DB_CONFIG = dbCnfig
		self.conn = None
		self.cursor = None
		self.msg = ''
		self.affect_rows = 0
		if not self.connect():
			exit()  #连接失败，退出

	def connect(self):
		try:
			if len(self.DB_CONFIG) == 0:
				self.msg = '数据库连接串为空，检查server、conn标签参数。\n'
				return False
			else:
				self.conn = pymysql.connect(host=self.DB_CONFIG['host'],
											port=int(self.DB_CONFIG['port']),
											user=self.DB_CONFIG['user'],
											passwd=self.DB_CONFIG['passwd'],
											db=self.DB_CONFIG['db'],
											charset=self.DB_CONFIG['charset'])
				self.cursor = self.conn.cursor(cursor=pymysql.cursors.DictCursor)
			return True
		except Exception as e:
			print('\nmysql connect failed:\n',str(e))
			return False

	# 查询多条数据
	def get_list(self, sql, args=None):
		self.cursor.execute(sql, args)
		result = self.cursor.fetchall()
		return result

	# 查询单条数据
	def get_one(self, sql, args=None):
		try:
			self.cursor.execute(sql, args)
			result = self.cursor.fetchone()
			return result
		except Exception as e:
			self.msg =  str(e)
			return False

	# 执行单条SQL语句
	def modify(self, sql, args=None):
		self.cursor.execute(sql, args)
		self.rows_affected = self.cursor.rowcount
		self.conn.commit()

	# 创建单条记录的语句
	def create(self, sql, args=None):
		self.cursor.execute(sql, args)
		self.conn.commit()
		last_id = self.cursor.lastrowid
		return last_id

	# 关闭数据库cursor和连接
	def close(self):
		self.cursor.close()
		self.conn.close()

	# 进入with语句自动执行
	def __enter__(self):
		return self

	# 退出with语句块自动执行
	def __exit__(self, exc_type, exc_val, exc_tb):
		self.close()
