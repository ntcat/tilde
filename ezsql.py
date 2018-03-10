#! /usr/bin/python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018/01/27'
"""
import sys
from common import files,build_sql,load_tld
import  common.global_var as gl

__version__ = '1.1.2'

class Tilde:
    def __init__(self):
        self.action =''
        self.option = ''
        self.sub_tld_dir = 'public'  # 数据处理子文件夹
        self.tld_path = ''    		 # tld数据夹在路径

    def main(self):
        self.tld_path = "{path}/{public}/".format(path=sys.path[0], public = self.sub_tld_dir)
        files_array = files.enumerate_files(self.tld_path) #得到所有tld文件

        if self.option == 'sql':
            files.delete_file('export.sql')

        f_pro = files.file_struct()

        export_rows = 0
        total_rows = 0
        trans_dict = {'insert':'插入','update':'更新','delete':'删除'}
        for i in range(len(files_array)):
            f_pro = files_array[i]
            gl.data = files.read_file(f_pro.fullPath)
            gl.file_name = f_pro.name # 正处理的文件名

            if not load_tld.load():       # 载入所有标签和数据，并检查错误
                print(gl.msg)
                break

            # 该载入的都已读入，有问题的，早滚蛋了。现在清净了，处理吧

            if  self.option=='sql':
                build_sql.build_sql_list(self.action)
                build_sql.export_sql_list('append')
                export_rows += len(gl.sql_list)
                print('(导出文件,记录数)=',gl.file_name, '=>',len(gl.sql_list))
            else:
                affected_rows = build_sql.execute_sql_list(self.action)
                total_rows += 0 if affected_rows is None else affected_rows
                print('从[%s]中%s记录数:%d'%(gl.file_name.strip(), trans_dict[self.action],affected_rows))
        if self.option=='sql':
            print('合计生成记录行数是:', export_rows)
            print('导出文件名：{path}\export.sql'.format(path=sys.path[0]))
        else:
            print('总共',trans_dict[self.action],'数据行数',total_rows)

if __name__ == '__main__':
    if len(sys.argv) == 1:
        print('\n\t~Tilde~ 版本号：{}'.format(__version__))
        print('\nusage: ezsql <insert,update,delete> [--sql] [sub_path]\n')
        print('\tinsert : insert data to mysql\n')
        print('\tupdate : update data to mysql\n')
        print('\tdelete : delete data from mysql\n')
        print('\t--sql : export sql to "export.sql" only\n')
        print('\tsub_path : .tld data path name, "public" folder as default')
        sys.exit(1)
    else:
        tld = Tilde()
        for i in range(1,len(sys.argv)):
            if  sys.argv[i].lower() in ['insert','update','delete']:
                tld.action = sys.argv[i].lower()
            elif sys.argv[i].lower() in ['--sql']:
                tld.option = 'sql'
            else:
                tld.sub_tld_dir = sys.argv[i]
        if tld.action == "":
            print("error command")
            exit(0)
        else:
            tld.main()

