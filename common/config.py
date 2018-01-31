#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__mtime__ = '2018-01-25'

# -*- coding: utf-8 -*-

"""
import os
import sys
import json

#  调用配置文件
def open_accordant_config(server):
    if server=='':
        server = 'default.json'
    config_file = "{path}/config/{server_name}".format(path=sys.path[0], server_name=server)
    if os.path.exists(config_file):
        with open(config_file, 'r') as f:
            # print("载入配置文件 {}".format(config_file))
            return json.load(f)
    else:
        with open('{}/config/default.json'.format(sys.path[0]), 'r') as f:
            print("不存在连接相关标签，使用默认配置文件")
            return json.load(f)
