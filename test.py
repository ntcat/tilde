#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-02-03'
"""
import common.globalVar as gl

gl._init()

gl.set_value('name', 'cc')
gl.set_value('score', 90)
print(gl.get_value('name') )