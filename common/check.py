#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-26'
"""

def is_fields_cross(fields_diff, fields_same):
	"""检查是否有字段交叉重叠"""
	same_sp = fields_same.split(',')
	diff_sp = fields_diff.split(',')
	for ss in same_sp:
		if ss in diff_sp:
			return True
	return False

def is_all_in_fields(fields_only, fields_diff_same):
	"""检查前者是否全包含于后者"""
	fields_only_sp = fields_only.split(',')
	fields_diff_same_sp = fields_diff_same.split(',')
	for ss in fields_only_sp:
		if ss not in fields_diff_same_sp:
			return False
	return False

def is_tilde_count_ok(content,field_count):
	"""检查格式。就是查~数量 对不对， tilde_count = n*(field_count+1)"""
	tilde_count = content.count('~')
	return tilde_count%(1+field_count)==0


