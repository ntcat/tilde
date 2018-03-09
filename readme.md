### ver 1.2.0
 - 鉴于原来防止重复插入方式上的懒于启齿的诸多缺点，做了重大改进。
 - 原方式通过主键约束（PRIMARY KEY）或唯一性约束（UNIQUE），来防止重复。看上去高大上，但实际没什么卵用，因为当这二个东西同时存在时，就永远不会重复了。试想一个自增的PK，遇到标题作唯一性约束时的情景。你说标题重复了，怎么还插，它说但是ID不同啊，我要当然插插插。on duplicate key ，我插你老母，go to hell。
 - 现在只要指定一个或多个唯一性判定标签，我们叫它虚拟唯一性约束（Virtual UNIQUE）。就能自动解决所有问题，不需要真的去建立表的唯一索引，也不会出现自增ID不连续问题。
 - 虚拟唯一性约束（Virtual UNIQUE） 的简称叫only, 没人喜欢复杂的单词。
 - 新增的标签叫fields_value_only,看上去它和 虚拟唯一性约束（Virtual UNIQUE）没什么关系，不过容易理解又对称美。
 - 因为有了虚拟唯一约束，因此我们可以进行完整的添加、更新、删除操作，上述操作通过命令行参数控制。
 - 因此inset_policy标签变成退化标签，没用了，插入时重复的就跳过不插入了。
 - 新增支持函数：{SQL:select语句}:返回结果是select后的第一列值 

# Tilde 1.2.0
# Tilde~ 泰迪 数据编辑上传工具 使用说明
![](https://github.com/ntcat/tilde/blob/master/resource/image/tilde.jpg)

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
- fields_value_only 必要标签，标记值唯一的字段，就是说明中的所谓虚拟唯一性约束（Virtual UNIQUE）,对应值按顺序 放在value。
- 命令行update操作时，不能也不需要更新的字段包括：fields_value_only标签中指定的值 ，{AUTO_INCREMENT}、{UUID}等函数值。 
- 错误友好的。id值 可以用单引号、双引号或无引号,允许多空格，标签大小写不敏感，象HTML标记一样，另外有~数量检查。
- 所有的要上传的内容，放到public或其它子文件夹。

``` 
<server id='MY122.json'>
<table id=author> 
<fields_value_same id=dynasty_id,dynasty value=13,近当代> 
<fields_value_diff id=name,intro> 
<fields_value_only id=name>  #只要作者名相同，就认为是重复行，不管你ID或其它唯一性约束
 
~艾青~ 
艾青，1910年3月27日生于浙江金华 ...~   
~北岛~ 
中国当代诗人、香港中文大学教授...  ~  
 ```
 ## 支持函数
   - 对于有规律，可计算的字段值，也规于same标签中。标记方式是大括号里面是一个声明式的函数。
   - 目前支持的四个函数是：
   
    {AUTO_INCREMENT} :自动加一
    
    {UUID}: 生成64位的GUID串
    
    {NOW}: 返回当前时间
    
    {SQL:select语句}:返回结果是select后的第一列值  
    
      
 ```
 <fields_value_same id=id,type_id,author_id value={AUTO_INCREMENT},118,{SQL:select id from author where author_name='李白'}>
 ```

# 上传方法： 
 - python ezsql.py insert             <--- 将 public 子文件夹内所有数据，直接上传到mysql 数据库
 - python ezsql.py update             <--- 将 public 子文件夹内所有数据，更新到mysql 数据库
 - python ezsql.py delete  public1    <--- 将 public1 子文件夹内所有数据，删除从mysql 数据库
 - python ezsql.py insert --sql       <--- 不执行指定插入操作，但会转化成export.sql 文件，可以直接被mysql 识别执行
 - python ezsql.py update --sql       <--- 不执行指定更新操作，但会转化成export.sql 文件，可以直接被mysql 识别执行
 - python ezsql.py delete --sql test  <--- 对test子文件夹，不执行指定删除操作，但会转化成export.sql 文件，可以直接被mysql 识别执行
 

# 安装：
 - python、pip 安装是必须的，此处省略。
- 本程序 用到的依赖包安装 ： 
```
pip install -r requirements.txt 
```

