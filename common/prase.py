#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018-01-25'
"""
import re

##清除所有HTML标记
def htm2txt( htmstr):
    result, number = re.subn('<([\s\S]+?)>', '', htmstr)
    return result


def prase_data(content, fields_count):
    """
    解析数据
    :param content:文件内容
    :param fields_count:diff字段数
    :return: [(,),(,),...]
    """
    try:
        # 如果匹配的内容中包含\r\n类东西，要用[\s\S]+?
        pat = re.compile(r'[~]' + '[\n]{0,}([\s\S]+?)[~][\n]{0,}' * fields_count )
        outs = re.findall(pat,content)
        return outs
    except Exception as e:
        return []

def prase_server(content):
    sv = prase_common(content, 'conn')
    if len(sv) == 0:
        return ""
    else:
       return  sv['id'].replace('"','').replace("'","")


def prase_table(content: object) -> object:
    tb = prase_common(content, 'table')
    if len(tb) == 0:
        return ""
    else:
       return  tb['id'].replace('"','').replace("'","")

def prase_fields_value_diff(content):
    fb = prase_common(content, 'fields_value_diff')
    if len(fb) == 0:
        return ""
    else:
       return  fb['id'].replace('，',',').replace(' ',',').replace('"','').replace("'","")

def prase_fields_value_only(content):
    fb = prase_common(content, 'fields_value_only')
    if len(fb) == 0:
        return ""
    else:
       return  fb['id'].replace('，',',').replace(' ',',').replace('"','').replace("'","")


def prase_fields_value_same(content):
    fb = prase_common(content, 'fields_value_same')
    if len(fb) == 0:
        return ("","")
    else:
       return  (fb['id'].replace('，',','),fb['value'].replace('，',','))

def prase_inset_policy(content):
    fb = prase_common(content, 'inset_policy')
    if len(fb) == 0:
        return  "ignore"
    else:
       return  fb['duplicate'].lower()


# 通用部分的解析:<key (anything)>
def prase_common(content, keyword):
    # 如果匹配的内容中包含\r\n类东西，要用[\s\S]+?
    pat = re.compile(r'<[ ]{0,}' + keyword + '[ ]{1,}([\s\S]+?)>', flags=re.IGNORECASE)
    tag_coms = re.findall(pat,content)
    if len(tag_coms) == 0:
        return []
    # 先规范一下，去掉=号二边的空格
    tag_com = tag_coms[0].strip()

    # 对{}中的内容进行保护
    pat = re.compile(r'{([\s\S]+?)}', flags=re.IGNORECASE)
    tag_brace = re.findall(pat,tag_com)
    for i in range(len(tag_brace)):
        replace_to = 'tag_brace_%d'%i
        tag_com = tag_com.replace(tag_brace[i], replace_to)

    # 把单引号，双引号全部去掉
    tag_com = tag_com.replace('\'', '')
    tag_com = tag_com.replace('\"', '')
    tag_com = multi_space_to_one_space(tag_com)
    # 在处理逗号前，去掉多余的空格，否则下面二行有漏洞
    tag_com = tag_com.replace(', ', ',')  # 去掉逗号右的空格
    tag_com = tag_com.replace(' ,', ',')  # 去掉逗号左的空格

    # 去除=号二边的空格
    sp_com = tag_com.split('=')
    new_tag_com = ''
    for a in sp_com:
        a = a.strip()
        new_tag_com = new_tag_com + '=' + a
    new_tag_com = new_tag_com[1:]  # 去掉头部的=号

    # 现在规范了，处理吧
    regex = re.compile('\s+')  # 多个连续空格当一个用
    sp_com = regex.split(new_tag_com)
    keys = {}
    the_value = ''
    replace_from = ''
    for a in sp_com:
        sp_a = a.split('=')
        if len(sp_a) == 2:
            the_value = sp_a[1]
            for i in range(len(tag_brace)):
                fd = 'tag_brace_%d'%i
                the_value = the_value.replace(fd,tag_brace[i])
            keys[sp_a[0]] = the_value
    return keys

# 只做一件，将连续的空格变成一个，合并 多余空格a='1    2'.split(' ') any(aa[1]) == false
def multi_space_to_one_space(content):
    return ' '.join(
        filter(lambda x: x,content.split(' ')))
    # return ' '.join(re.compile('\s+').split(content))  #这个也行，不过要引入re

