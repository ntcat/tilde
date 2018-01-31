5  # !/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'shen.bas'
__time__ = '2018/01/27'
"""
import sys
from common import files,global_var,build_sql,load_tld,execute_sql
__version__ = '1.1.1'

class Tilde:
    def __init__(self):
        self.g = global_var.GlobalVar()
        self.action ='scan'
        self.sub_tld_dir = 'public'  # 数据处理子文件夹
        self.tld_path = ''    		 # tld数据夹在路径

    def main(self):
        self.tld_path = "{path}/{public}/".format(path=sys.path[0], public = self.sub_tld_dir)
        files_array = files.enumerate_files(self.tld_path) #得到所有tld文件

        if self.action == 'sql':
            files.delete_file('export.sql')

        f_pro = files.file_struct()

        export_rows = 0
        insert_rows = 0
        for i in range(len(files_array)):
            f_pro = files_array[i]
            self.g.data = files.read_file(f_pro.fullPath)
            self.g.file_name = f_pro.name # 正处理的文件名

            if not load_tld.load(self.g):       # 载入所有标签和数据，并检查错误
                print(self.g.msg)
                break

            # 该载入的都已读入，有问题的，早滚蛋了。现在清净了，处理吧

            if  self.action=='sql':
                build_sql.build_sql_list(self.g)
                build_sql.export_sql_list('append',self.g)
                export_rows += len(self.g.sql_list)
                print('(导出文件,记录数)=',self.g.file_name, '=>',len(self.g.sql_list))
            elif self.action == 'insert':
                affected_rows = execute_sql.execute_sql_list(self.g)
                insert_rows += 0 if affected_rows is None else affected_rows
                print('从[',self.g.file_name.strip(),']插入行数',affected_rows)

        if self.action == 'scan':
            print('扫描完成，一切正常，可以插入')
        elif self.action == 'sql':
            print('合计生成记录行数是:', export_rows)
            print('导出文件名：{path}\export.sql'.format(path=sys.path[0]))
        elif self.action == 'insert':
            print('总共插入数据行数',insert_rows)

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('\n\t~Tilde~ 版本号：{}'.format(__version__))
        print('\nusage: ezsql <scan,sql,insert> [sub_path]\n')
        print('\tscan : check error only\n')
        print('\tsql : export sql to "export.sql" only\n')
        print('\tinsert : insert data to mysql\n')
        print('\tsub_path : .tld data path name, "public" folder as default')
        sys.exit(1)
    else:
        tld = Tilde()
        tld.action = sys.argv[1].lower()
        if len(sys.argv) == 3:
            tld.sub_tld_dir = sys.argv[2]

        tld.main()

