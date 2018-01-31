#!/usr/bin/env python
# -*- coding: utf-8 -*-
""" 声明式函数 处理  declarative function
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-28'
"""
import uuid
import re
from datetime import *

from common import sqlmanager

def trans_decl_func_to_value(gv,keyName):
    try:
        keyValue = gv.fields_dict[keyName]
        pat = re.compile(r'{[ ]{0,}([\s\S]+?)[ ]{0,}}')
        outs = re.findall(pat, str(keyValue))
        df = '' if len(outs)==0 else outs[0].upper()
        if df == '':   # most first
            return keyValue
        elif df == 'AUTO_INCREMENT':
            return get_auto_increment(gv,keyName)
        elif df == 'UUID' or df =='GUID':
            return get_uuid()
        elif df =='NOW':
            return get_now()
        else:
            pass
        return keyValue

    except Exception as e:
        print(e)
        return None

# 取得GUID like  '505fdd5a-c96c-11e7-b191-0028f80ee99f'
def get_uuid():
    return str(uuid.uuid1())

# 取得当前时间 like  '2018-01-28 20:10:23.320537'
def get_now():
    return str(datetime.now())

# 自动加一功能，先搜索找到表中最大值，然后存储在字典中（考虑到可能有多个字段使用auto_increment)
def get_auto_increment(gv,field):
    table = gv.table_name
    keyName = table + '_' + field
    if keyName in gv.auto_increment_dict:
        new_value = gv.auto_increment_dict[keyName] + 1
    else:
        maxValue = get_max_auto_increment_from_table(gv,field)
        new_value = maxValue + 1

    gv.auto_increment_dict[keyName] = new_value
    return new_value

def get_max_auto_increment_from_table(gv,field):
    try:
        table = gv.table_name
        sql = 'select max({fd}) as maxv from {tb}'.format(fd=field,tb=table)

        db = sqlmanager.SQLManager(gv.DB_CONFIG)
        row=db.get_one(sql)
        db.close()
        if len(row)>0:
            return 0 if row['maxv']==None else row['maxv']
        else:
            return 0
    except Exception as e:
        print(gv.file_name, e)
        print('表或字段可能不存在。')
        return 0
