# tilde

# ~Tilde~ 泰迪 数据编辑上传工具 使用说明
![](./resource/image/tilde.jpg)
- 简单的说，它可以很方便的编辑和整理成批的数据 ，带上自描述的tag，让你一个命令就上传到数据库
- 相对来说，.sql和.cvs格式是供机器使用的，对人类并不友好。
- 想要找一个方便编辑、上传数据库的格式。我建议你试试我的.tld格式。 
- 目前是针对mysql数据库，代码改改可用于其它。
- 这是开源的，遵循某XX协议。

- 要处理的格式化文件（~这种的），放在public子文件夹中。

## 格式说明：
- conn是连接数据库的,id指定的配置文件保存在config子文件夹。
- 分隔符只需要一个~波浪线。这意味着你的内容中不能出现这个符号，否则会冲突。
- table,fields_ 中用的字段必须是真实的表的字段名
- 用到的空格、逗号也有 一定的容错能力。
- table 必要标签，代表表名，注意大小写一致
- fields_value_diff 必要标签，标记值不同的字段，就是波浪符~中间的内容。波浪符总数 = n *（fields_value_diff_id中字段数+1）。
- fields_value_same 可选标签，标记值相同的字段，对应值按顺序 放在value。
- inset_policy 可选标签，插入策略，遇到重复行有忽略或更新二种选择，这个标签起作用的条件是表内建立唯一索引（unique index）。
- 如果希望在库中顺便填加GUID和时间，可以手工在波浪线中间加上uuid()、now()，参看utils.py
- 错误友好的。id值 可以用单引号、双引号或无引号,允许多空格，标签大小写不敏感，象HTML标记一样，另外有~数量检查。
- 所有的内容，放到public子文件夹，然后运行: *** python ez [scan ,sql,insert] ***

``` 
<server id='MY122.json'>
<table id=authors> 
<fields_value_same id=dynasty_id,dynasty value=13,近当代> 
<fields_value_diff id=name,intro> 
<inset_policy duplicate=ignore> 
#ignore(遇到相同忽略，默认值）、update(遇到相同，更新） 
~艾青~ 
艾青，1910年3月27日生于浙江金华 ...~   
~北岛~ 
中国当代诗人、香港中文大学教授...  ~  
 ```
 ## 支持函数
   - 对于有规律，可计算的字段值，也规于same标签中。标记方式是大括号里面是一个声明式的函数。
   - 目前支持的三个函数是：
      1) AUTO_INCREMENT :自动加一
      2) UUID: 生成64位的GUID串
      3) NOW: 返回当前时间
 ```
 <fields_value_same id=code,type_id,author value={AUTO_INCREMENT},118,茨维塔耶娃>
 ```

# 上传方法：
 - python ezsql scan             <--- 扫描 public 子文件夹，看有没有不规范的格式
 - python ezsql sql               <--- 将 public 子文件夹内所有数据，转化成export.sql 文件，可以直接被mysql 识别执行
 - python ezsql insert           <--- 将 public 子文件夹内所有数据，直接上传到mysql 数据库

- python ezsql scan  public1    <--- 扫描 public1 子文件夹，看有没有不规范的格式
- 下面的一样了。猜吧。

# 安装：
 - python、pip 安装是必须的，此处省略。
- 本程序 用到的依赖包安装 ： 
```
pip install -r requirements.txt 
```

