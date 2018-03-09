set @v_title="乡愁";
set @v_body="小时侯
乡愁是一枚小小的邮票
我在这头
母亲在那头
长大后乡愁是一张窄窄的船票
我在这头
新娘在那头
后来呵
乡愁是一方矮矮的坟墓
我在外头
母亲呵在里头
而现在
乡愁是一湾浅浅的海峡
我在这头
大陆在那头";
set @v_id="909";
set @v_code="297";
set @v_type_id="118";
set @v_author_id="5179";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="当我死时";
set @v_body="当我死时，葬我在长江与黄河
之间，枕我的头颅，白发盖着黑土。
在中国，最美最母亲的国度，
我便坦然睡去，睡整张大陆，
听两侧，安魂曲起自长江，黄河
两管永生的音乐，滔滔，朝东。
这是最纵容最宽阔的床，

让一颗心满足地睡去，满足的想，
从前，一个中国青年曾经，
在冰冻的密西根河向西了望，
想望透黑夜看中国的黎明，
饕餮地图，从西湖到太湖，
到多鹧鸪的重庆，代替回乡。";
set @v_id="910";
set @v_code="298";
set @v_type_id="118";
set @v_author_id="5179";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title=" 浆声灯影里的秦淮河(俞平伯篇）";
set @v_body="我们消受得秦淮河上的灯影，当圆月犹皎的仲夏之夜。 

在茶店里吃了一盘豆腐干丝，两个烧饼之后，以歪歪的脚步踅上夫子庙前停泊着的画 
舫，就懒洋洋躺到藤椅上去了。好郁蒸的江南，傍晚也还是热的。“快开船罢！”桨声响 
了。 

小的灯舫初次在河中荡漾；于我，情景是颇朦胧，滋味是怪羞涩的。我要错认它作七里 
的山塘；可是，河房里明窗洞启，映着玲珑入画的曲栏干，顿然省得身在何处了。佩弦呢。 
他已是重来，很应当消释一些迷惘的。但看他太频繁地摇着我的黑纸扇。胖子是这个样怯热 
的吗？ 

又早是夕阳西下，河上妆成一抹胭脂的薄媚。是被青溪的姊妹们所薰染的吗？还是匀得 
她们脸上的残脂呢？寂寂的河水，随双桨打它，终是没言语。密匝匝的绮恨逐老去的年华， 
已都如蜜饧似的融在流波的心窝里，连呜咽也将嫌它多事，更哪里论到哀嘶。心头，宛转的 
凄怀；口内，徘徊的低唱；留在夜夜的秦淮河上。 

在利涉桥边买了一匣烟，荡过东关头，渐荡出大中桥了。船儿悄悄地穿出连环着的三个 
壮阔的涵洞，青溪夏夜的韶华已如巨幅的画豁然而抖落。哦！凄厉而繁的弦索，颤岔而涩的 
歌喉，杂着吓哈的笑语声，劈拍的竹牌响，更能把诸楼船上的华灯彩绘，显出火样的鲜明， 
火样的温煦了。小船儿载着我们，在大船缝里挤着，挨着，抹着走。它忘了自己也是今宵河 
上的一星灯火。 

既踏进所谓“六朝金粉气”的销金锅，谁不笑笑呢！今天的一晚，且默了滔滔的言说， 
且舒了恻恻的情怀，暂且学着，姑且学着我们平时认为在醉里梦里的他们的憨痴笑语。看！ 
初上的灯儿们一点点掠剪柔腻的波心，梭织地往来，把河水都皴得微明了。纸薄的心旌，我 
的，尽无休息地跟着它们飘荡，以致于怦怦而内热。这还好说什么的！如此说，诱惑是诚然 
有的，且于我已留下不易磨灭的印记。至于对榻的那一位先生，自认曾经一度摆脱了纠缠的 
他，其辨解又在何处？这实在非我所知。 

我们，醉不以涩味的酒，以微漾着，轻晕着的夜的风华。不是什么欣悦，不是什么慰 
藉，只感到一种怪陌生，怪异样的朦胧。朦胧之中似乎胎孕着一个如花的笑——这么淡，那 
么淡的倩笑。淡到已不可说，已不可拟，且已不可想；但我们终久是眩晕在它离合的神光之 
下的。我们没法使人信它是有，我们不信它是没有。勉强哲学地说，这或近于佛家的所谓 
“空”，既不当鲁莽说它是“无”，也不能径直说它是“有”。或者说“有”是有的，只因 
无可比拟形容那“有”的光景；故从表面看，与“没有”似不生分别。若定要我再说得具体 
些：譬如东风初劲时，直上高翔的纸鸢，牵线的那人儿自然远得很了，知她是哪一家呢？但 
凭那鸢尾一缕飘绵的彩线，便容易揣知下面的人寰中，必有微红的一双素手，卷起轻绡的广 
袖，牢担荷小纸鸢儿的命根的。飘翔岂不是东风的力，又岂不是纸鸢的含德；但其根株却将 
另有所寄。请问，这和纸鸢的省悟与否有何关系？故我们不能认笑是非有，也不能认朦胧即 
是笑。我们定应当如此说，朦胧里胎孕着一个如花的幻笑，和朦胧又互相混融着的；因它本 
来是淡极了，淡极了这么一个。 

漫题那些纷烦的话，船儿已将泊在灯火的丛中去了。对岸有盏跳动的汽油灯，佩弦便硬 
说它远不如微黄的灯火。我简直没法和他分证那是非。 

时有小小的艇子急忙忙打桨，向灯影的密流里横冲直撞。冷静孤独的油灯映见黯淡久的 
画船（？）头上，秦淮河姑娘们的靓妆。茉莉的香，白兰花的香，脂粉的香，纱衣裳的 
香……微波泛滥出甜的暗香，随着她们那些船儿荡，随着我们这船儿荡，随着大大小小一切 
的船儿荡。有的互相笑语，有的默然不响，有的衬着胡琴亮着嗓子唱。一个，三两个，五六 
七个，比肩坐在船头的两旁，也无非多添些淡薄的影儿葬在我们的心上——太过火了，不至 
于罢，早消失在我们的眼皮上。谁都是这样急忙忙的打着桨，谁都是这样向灯影的密流里冲 
着撞；又何况久沉沦的她们，又何况飘泊惯的我们俩。当时浅浅的醉，今朝空空的惆怅；老 
实说，咱们萍泛的绮思不过如此而已，至多也不过如此而已。你且别讲，你且别想！这无非 
是梦中的电光，这无非是无明的幻相，这无非是以零星的火种微炎在大欲的根苗上。扮戏的 
咱们，散了场一个样，然而，上场锣，下场锣，天天忙，人人忙。看！吓！载送女郎的艇子 
才过去，货郎担的小船不是又来了？一盏小煤油灯，一舱的什物，他也忙得来象手里的摇 
铃，这样丁冬而郎当。 

杨枝绿影下有条华灯璀璨的彩舫在那边停泊。我们那船不禁也依傍短柳的腰肢，欹侧地 
歇了。游客们的大船，歌女们的艇子，靠着。唱的拉着嗓子；听的歪着头，斜着眼，有的甚 
至于跳过她们的船头。如那时有严重些的声音，必然说：“这哪里是什么旖旎风光！”咱们 
真是不知道，只模糊地觉着在秦淮河船上板起方正的脸是怪不好意思的。咱们本是在旅馆 
里，为什么不早早入睡，掂着牙儿，领略那“卧后清宵细细长”；而偏这样急急忙忙跑到河 
上来无聊浪荡？还说那时的话，从杨柳枝的乱鬓里所得的境界，照规矩，外带三分风华的。 
况且今宵此地，动荡着有灯火的明姿。况且今宵此地，又是圆月欲缺未缺，欲上未上的黄昏 
时候。叮当的小锣，伊轧的胡琴，沉填的大鼓……弦吹声腾沸遍了三里的秦淮河。喳喳嚷嚷 
的一片，分不出谁是谁，分不出那儿是那儿，只有整个的繁喧来把我们包填。仿佛都抢着说 
笑，这儿夜夜尽是如此的，不过初上城的乡下老是第一次呢。真是乡下人，真是第一次。 

穿花蝴蝶样的小艇子多到不和我们相干。货郎担式的船，曾以一瓶汽水之故而拢近来， 
这是真的。至于她们呢，即使偶然灯影相偎而切掠过去，也无非瞧见我们微红的脸罢了，不 
见得有什么别的。可是，夸口早哩！——来了，竟向我们来了！不但是近，且拢着了。船头 
傍着，船尾也傍着；这不但是拢着，且并着了。厮并着倒还不很要紧，且有人扑冬地跨上我 
们的船头了。这岂不大吃一惊！幸而来的不是姑娘们，还好。（她们正冷冰冰地在那船头 
上。）来人年纪并不大，神气倒怪狡猾，把一扣破烂的手折，摊在我们眼前，让细瞧那些戏 
目，好好儿点个唱。他说：“先生，这是小意思。”诸君，读者，怎么办？ 

好，自命为超然派的来看榜样！两船挨着，灯光愈皎，见佩弦的脸又红起来了。那时的 
我是否也这样？这当转问他。（我希望我的镜子不要过于给我下不去。）老是红着脸终久不 
能打发人家走路的，所以想个法子在当时是很必要。说来也好笑，我的老调是一味的默，或 
干脆说个“不”，或者摇摇头，摆摆手表示“决不”。如今都已使尽了。佩弦便进了一步， 
他嫌我的方术太冷漠了，又未必中用，摆脱纠缠的正当道路惟有辩解。好吗！听他说：“你 
不知道？这事我们是不能做的。”这是诸辩解中最简洁，最漂亮的一个。可惜他所说的“不 
知道？”来人倒真有些“不知道！”辜负了这二十分聪明的反语。他想得有理由，你们为什 
么不能做这事呢？因这“为什么？”佩弦又有进一层的曲解。那知道更坏事，竟只博得那些 
船上人的一哂而去。他们平常虽不以聪明名家，但今晚却又怪聪明，如洞彻我们的肺肝一样 
的。这故事即我情愿讲给诸君听，怕有人未必愿意哩。“算了罢，就是这样算了罢；”恕我 
不再写下了，以外的让他自己说。 

叙述只是如此，其实那时连翩而来的，我记得至少也有三五次。我们把它们一个一个的 
打发走路。但走的是走了，来的还正来。我们可以使它们走，我们不能禁止它们来。我们虽 
不轻被摇撼，但已有一点杌陧了。况且小艇上总载去一半的失望和一半的轻蔑，在桨声里仿 
佛狠狠地说，“都是呆子，都是吝啬鬼！”还有我们的船家（姑娘们卖个唱，他可以赚几个 
子的佣金。）眼看她们一个一个的去远了，呆呆的蹲踞着，怪无聊赖似的。碰着了这种外 
缘，无怒亦无哀，惟有一种情意的紧张，使我们从颓弛中体会出挣扎来。这味道倒许很真切 
的，只恐怕不易为倦鸦似的人们所喜。 

曾游过秦淮河的到底乖些。佩弦告船家：“我们多给你酒钱，把船摇开，别让他们来罗 
嗦。”自此以后，桨声复响，还我以平静了，我们俩又渐渐无拘无束舒服起来，又滔滔不断 
地来谈谈方才的经过。今儿是算怎么一回事？我们齐声说，欲的胎动无可疑的。正如水见波 
痕轻婉已极，与未波时究不相类。微醉的我们，洪醉的他们，深浅虽不同，却同为一醉。接 
着来了第二问，既自认有欲的微炎，为什么艇子来时又羞涩地躲了呢？在这儿，答语参差 
着。佩弦说他的是一种暗味的道德意味，我说是一种似较深沉的眷爱。我只背诵岂君的几句 
诗给佩弦听，望他曲喻我的心胸。可恨他今天似乎有些发钝，反而追着问我。 

前面已是复成桥。青溪之东，暗碧的树梢上面微耀着一桁的清光。我们的船就缚在枯柳 
桩边待月。其时河心里晃荡着的，河岸头歇泊着的各式灯船，望去，少说点也有十廿来只。 
惟不觉繁喧，只添我们以幽甜。虽同是灯船，虽同是秦淮，虽同是我们；却是灯影淡了，河 
水静了，我们倦了，——况且月儿将上了。灯影里的昏黄，和月下灯影里的昏黄原是不相似 
的，又何况入倦的眼中所见的昏黄呢。灯光所以映她的禣E*耍禄韵此男愎牵耘 
钐诘男难嫣杷氖⒛辏以饧涩的眼波供养她的迟暮。必如此，才会有圆足的醉，圆足的 
恋，圆足的颓弛，成熟了我们的心田。 

犹未下弦，一丸鹅蛋似的月，被纤柔的云丝们簇拥上了一碧的遥天。冉冉地行来，冷冷 
地照着秦淮。我们已打桨而徐归了。归途的感念，这一个黄昏里，心和境的交萦互染，其繁 
密殊超我们的言说。主心主物的哲思，依我外行人看，实在把事情说得太嫌简单，太嫌容 
易，太嫌分明了。实有的只是浑然之感。就论这一次秦淮夜泛罢，从来处来，从去处去，分 
析其间的成因自然亦是可能；不过求得圆满足尽的解析，使片段的因子们合拢来代替刹那间 
所体验的实有，这个我觉得有点不可能，至少于现在的我们是如此的。凡上所叙，请读者们 
只看作我归来后，回忆中所偶然留下的千百分之一二，微薄的残影。若所谓“当时之感”， 
我决不敢望诸君能在此中窥得。即我自己虽正在这儿执笔构思，实在也无从重新体验出那时 
的情景。说老实话，我所有的只是忆。我告诸君的只是忆中的秦淮夜泛。至于说到那“当时 
之感”，这应当去请教当时的我。而他久飞升了，无所存在。 ";
set @v_id="911";
set @v_code="299";
set @v_type_id="118";
set @v_author_id="5369";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="礼物";
set @v_body="如此幸福的一天 
雾早散了，我在花园劳作 
蜂鸟歇在忍冬花上 
世上没有什么我真想拥有 
我知道没人值得我羡慕 
遭受的任何痛苦，我都忘了 
想起过去的我并不使我难堪 
我感觉不到痛苦 
直起身，我看见 
蓝色的大海和风帆。 ";
set @v_id="912";
set @v_code="300";
set @v_type_id="118";
set @v_author_id="5413";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="对星星的诺言";
set @v_body="星星睁着眼睛， 
挂在黑丝绒上亮晶晶： 
你们从上往下望， 
看我可纯真？ 

星星睁着眼睛， 
嵌在宁谧的天空闪闪亮， 
你们在高处， 
说我可善良？ 

星星睁着眼睛， 
睫毛眨不止， 
你们为什么有这么多颜色 
有蓝，有红，还有紫？ 

好奇的小眼睛， 
彻底睁着不睡眠， 
玫瑰色的黎明 
为什么要抹掉你们？ 

星星的小眼睛， 
洒下泪滴或露珠。 
你们在上面抖个不停， 
是不是因为寒冷？ 

星星的小眼睛， 
我向你们保证： 
你们瞅着我， 
我永远，永远纯真";
set @v_id="913";
set @v_code="301";
set @v_type_id="118";
set @v_author_id="5409";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="回答";
set @v_body="卑鄙是卑鄙者的通行证，
高尚是高尚者的墓志铭。
看吧，在那镀金的天空中，
飘满了死者弯曲的倒影。
冰川纪过去了，
为什么到处都是冰凌？
好望角发现了，
为什么死海里千帆相竞？
我来到这个世界上，
只带着纸、绳索和身影，
为了在审判之前，
宣读那些被判决了的声音：
告诉你吧，世界，
我——不——相——信！
纵使你脚下有一千名挑战者，
那就把我算做第一千零一名。
我不相信天是蓝的，
我不相信雷的回声；
我不相信梦是假的，
我不相信死无报应。
如果海洋注定要决堤，
就让所有的苦水都注入我心中；
如果陆地注定要上升，
就让人类重新选择生存的峰顶。
新的转机和闪闪的星斗，
正在缀满没有遮拦的天空，
那是五千年的象形文字，
那是未来人们凝视的眼睛。";
set @v_id="914";
set @v_code="302";
set @v_type_id="118";
set @v_author_id="5345";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="一束";
set @v_body="在我和世界之间
你是海湾，是帆
是缆绳忠实的两端
你是喷泉，是风
是童年清脆的呼喊


在我和世界之间
你是画框，是窗口
是开满野花的田园
你是呼吸，是床头
是陪伴星星的夜晚


在我和世界之间
你是日历，是罗盘
是暗中滑行的光线
你是履历，是书签
是写在最后的序言


在我和世界之间
你是纱幕，是雾
是映入梦中的灯盏
你是口笛，是无言之歌
是石雕低垂的眼帘


在我和世界之间
你是鸿沟，是池沼
是正在下陷的深渊
你是栅栏，是墙垣
是盾牌上永久的图案";
set @v_id="915";
set @v_code="303";
set @v_type_id="118";
set @v_author_id="5345";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title=" 断章";
set @v_body="你站在桥上看风景，
看风景人在楼上看你。

明月装饰了你的窗子，
你装饰了别人的梦";
set @v_id="916";
set @v_code="304";
set @v_type_id="118";
set @v_author_id="5153";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="一棵开花的树";
set @v_body="如何让你遇见我
在我最美丽的时刻　为这
我已在佛前　求了五百年
求祗让我们结一段尘缘
佛于是把我化作一棵树
长在你必经的路旁
阳光下慎重地开满了花
朵朵都是我前世的盼望
当你走近　请你细听
那颤抖的叶是我等待的热情
而当你终于无视地走过
在你身后落了一地的
朋友啊　那不是花瓣
是我凋零的心";
set @v_id="917";
set @v_code="305";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="夏日的午后";
set @v_body="想你　和那一个
夏日的午后
想你从林深处缓缓走来
是我含笑的出水的莲
是我的　最最温柔
最易疼痛的那一部分
是我的　圣洁遥远
最不可碰触的年华
极愿　如庞贝的命运
将一切最美的在瞬间烧熔
含泪成为永恒的模子
好能　一次次地　在千万年间
重复地　重复地　重复地
嵌进你我的心中";
set @v_id="918";
set @v_code="306";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="如歌的行板";
set @v_body="一定有些什么
是我所不能了解的

不然　草木怎么都会
循序生长
而侯鸟都能飞回故乡

一定有些什么
是我所无能无力的

不然　日与夜怎么交替得
那样快　所有的时刻
都已错过　忧伤蚀我心怀

一定有些什么　在叶落之后
是我所必须放弃的

是十六岁时的那本日记
还是　我藏了一生的

那些美丽的如山百合般的
秘密";
set @v_id="919";
set @v_code="307";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="爱的筵席";
set @v_body="是令人日渐消瘦的心事
是举箸前莫名的伤悲
是记忆里一场不散的筵席
是不能饮不可饮　也要拼却的
一醉";
set @v_id="920";
set @v_code="308";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="年轻的心";
set @v_body="不再回头的
不再是古老的辰光
也不只是那些个夜晚的
星群和月亮

尽管　每个清晨仍然会
开窗探望
每个夏季　仍然
会有茉莉的清香

可是　是有些什么
已经失落了
在拥挤的市街前
在仓皇下降的暮色中
我年轻的心啊
会有茉莉的清香

可是　是有些什么
已经失落了
在拥挤的市街前
在仓皇下降的暮色中
我年轻的心啊
永不再重逢";
set @v_id="921";
set @v_code="309";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="十六岁的花季";
set @v_body="在陌生的城市里醒来
唇间仍留着你的名字
爱人我已离你千万里
我也知道
十六岁的花季只开一次

但我仍在意裙裾的洁白
在意那一切被赞美的
被宠爱与抚慰的情怀
在意那金色的梦幻的网
替我挡住异域的风霜

爱原来是一种酒
饮了就化作思念
而在陌生的城市里
我夜夜举杯
遥向着十六岁的那一年";
set @v_id="922";
set @v_code="310";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="我的信仰";
set @v_body="我相信　爱的本质一如
生命的单纯与温柔
我相信　所有的
光与影的反射和相投

我相信　满树的花朵
只源于冰雪中的一粒种子
我相信　三百篇诗
反复述说着的　也就只是
年少时没能说出的
那一个字

我相信　上苍一切的安排
我也相信　如果你愿与我
一起去追溯
在那遥远而谦卑的源头之上
我们终于会互相明白";
set @v_id="923";
set @v_code="311";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="诀别";
set @v_body="不愿成为一种阻挡
不愿　让泪水
沾濡上最亲爱的那张脸庞

于是　在这黑暗的时刻
我悄然隐退
请原谅我不说一声再会
而在最深最深的角落里
试着将你藏起
藏到任何人　任何岁月
也无法触及的　距离";
set @v_id="924";
set @v_code="312";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="泪─月华";
set @v_body="忘不了的　是你眼中的泪
映影着云间的月华

昨夜　下了雨
雨丝侵入远山的荒冢
那小小的相思木的树林
遮盖在你坟山的是青色的荫
今晨　天晴了
地萝爬上远山的荒冢
那轻轻的山谷里的野风
拂拭在你坟上的是白头的草

黄昏时
谁会到坟间去辨认残破的墓碑
已经忘了埋葬时的方位
只记得哭的时候是朝着斜阳

随便吧
选一座青草最多的
放下一束风信子
我本不该流泪
明知地下长眠的不一定是你
又何必效世俗人的啼泣

是几百年了啊
这悠长的梦　还没有醒
但愿现实变成古老的童话
你只是长睡一百年　我也陪你
让野蔷薇在我们身上开花
让红胸鸟在我们发间做巢
让落叶在我们衣褶里安息
转瞬间就过了一个世纪

但是　这只是梦而已
远山的山影吞没了你
也吞没了我忧郁的心
回去了　穿过那松林
林中有模糊的鹿影
幽径上开的是什么花
为什么夜夜总是带泪的月华";
set @v_id="925";
set @v_code="313";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="四季";
set @v_body="　<１>

让我相信　亲爱的
这是我的故事
就好像　让我相信
花开　花落
就是整个春季的历史

　<２>

你若能忘记　那么
我应该也可以
把所有的泪珠都冰凝在心中
或者　将它们缀上
那夏夜的无垠的天空

　<３>

而当风起的时候
我也只不管紧一紧衣裾
护住我那仍在低唱的心
不让秋来偷听

　<４>

只为　不能长在落雪的地方
终我一生　无法说出那个盼望
我是一棵被移植的针叶木
亲爱的　你是那极北的
冬日的故土";
set @v_id="926";
set @v_code="314";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="白鸟之死";
set @v_body="你若是那含泪的射手
我就是　那一只
决心不再躲闪的白鸟

只等那羽箭破空而来
射入我早已碎裂的胸怀
你若是这世间唯一
唯一能伤我的射手
我就是你所有的青春岁月
所有不能忘的欢乐和悲愁

就好象是最后的一朵云彩
隐没在那无限澄蓝的天空
那么　让我死在你的手下
就好象是　终于能
死在你的怀中";
set @v_id="927";
set @v_code="315";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="此刻之后";
set @v_body="在古老单纯的时光里
一直　有一句
没说完的话

像日里夜里的流水
是山上海上的月光
反复地来　反复地去

让我柔弱的心
始终在盼望　始终
找不到栖身的地方

而在此时　你用
静默的风景　静默的
声音把它说完

我却在拦阻不及的热泪里
发现　此刻之后
青春终于一去不再复返";
set @v_id="928";
set @v_code="316";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="山路";
set @v_body="我好像答应过
要和你　一起
走上那条美丽的山路

你说　那坡上种满了新茶
还有细密的相思树
我好像答应过你
在一个遥远的春日下午
而今夜　在灯下
梳起我初白的发
忽然记起了一些没能
实现的诺言　一些
无法解释的悲伤

在那条山路上
少年的你　是不是
还在等我
还在急切地向来处张望";
set @v_id="929";
set @v_code="317";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="请别哭泣";
set @v_body="我已无诗
世间也再无飞花　无细雨
尘封的四季啊
请别哭泣

万般　万般的无奈
爱的余烬已熄
重回人间
猛然醒觉那千条万条　都是
已知的路　已了然的轨迹

跟着人群走下去吧
就这样微笑地走到尽头
我柔弱的心啊
请试着去忘记　请千万千万
别再哭泣";
set @v_id="930";
set @v_code="318";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="灯下的诗与心情";
set @v_body="不是在一瞬间　就能
脱胎换骨的
生命原是一次又一次的
试探

所以　请耐心地等待
我爱　让昼与夜交替地过去
让白发日渐滋长
让我们慢慢地改变了心情
让焚烧了整个春与夏的渴望
终于熄灭　换成了
一种淡然的逐渐远去的酸辛

月亮出来的时候
也不能再开门去探望
也能　终于
由得它去疯狂地照进
所有的山林";
set @v_id="931";
set @v_code="319";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="美丽的心情";
set @v_body="假如生命是一列
疾驰而过的火车
快乐和伤悲　就是
那两条铁轨
在我身后　紧紧追随

所有的时刻都很仓皇而又模糊
除非你能停下来　远远地回顾

只有在回首的刹那
才能得到一种清明的
酸辛　所以　也只有
在太迟了的时候
才能细细揣摩出　一种
无悔的　美丽的　心情";
set @v_id="932";
set @v_code="320";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="青春";
set @v_body="假如生命是一列
所有的结局都已写好 
所有的泪水也都已启程 
却忽然忘了是怎么样的一个开始 
在那个古老的不再回来的夏日 
无论我如何地去追索 
年轻的你只如云影掠过 
而你微笑的面容极浅极淡 
逐渐隐没在日落后的群岚 
遂翻开那发黄的扉页 
命运将它装订得极为拙劣 
含着泪 我一读再读 却不得不承认 
青春是一本太仓促的书";
set @v_id="933";
set @v_code="321";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="送别";
set @v_body="不是所有的梦都来得及实现
不是所有的话都来得及告诉你
内疚和悔恨 
总要深深地种植在离别后的心中
尽管他们说
世间种种
最后终必成空
我并不是立意要错过
可是我 一直都在这样做
错过那花满枝桠的昨日
又要错过今朝   
今朝 仍要重复那相同的别离
馀生将成陌路
一去千里 
在暮霭里
向你深深地俯首
请为我珍重
尽管他们说 
世间种种 
最后终必 终必成空";
set @v_id="934";
set @v_code="322";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="回眸";
set @v_body="前世的五百次回眸才能换得今生的一次擦肩而过，
那么，我要用多少次回眸才能真正住进你的心中？
         ------席慕容
前世，我频频回眸 
挥别的手帕飘成一朵云 
多少相思 多少离愁 
终成一道水痕送我远走 
今生，我寻觅前世失落的足迹 
跋山涉水 走进你的眼中 
前世的五百次回眸换得今生的一次擦肩而过 
我用一千次回眸换得今生在你面前的驻足停留 
问佛：要多少次回眸才能真正住进你的心中 
佛无语,我只有频频回首 
像飞蛾扑向火 
可以不计后果 可以不要理由 
回眸 再回眸 
千次万次 你在我眼中 也在我心中 
我频频回顾着 期待你的温柔 
我频频回顾着 渴望长相厮守 
前世 我在舟中回眸 
莲叶一片一片 连成我眼中的哀愁 
今生 佛成全我的思念 
让我走进你的眼中 
我寻觅了很久 累了 
只想在你怀中停息 
只想让你的手揩去我脸上的泪痕 
只想让你的体温温暖我冰凉的双手 
不要问我为何今生千里迢迢将你寻觅 
我没有喝孟婆汤 心中牵挂着你 
不要问我为何哭泣 
我没有喝孟婆汤 仍记得前世离别时心底的绝望 
说我喜极而泣吧 
泪落在你的襟上 
前世的种种哀愁开成一树繁密的丁香 
我只想与你携手在树下看那一朵开成五瓣向我们预言幸福 
今生我仍旧频频回望 
今生我仍旧不喝孟婆汤 
来世我还会千里迢迢将你寻觅 
来世我还会和你手牵手寻找五瓣的丁香";
set @v_id="935";
set @v_code="323";
set @v_type_id="118";
set @v_author_id="5364";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="再别康桥";
set @v_body="轻轻的我走了，
正如我轻轻的来；
我轻轻的招手，
作别西天的云彩。

那河畔的金柳，
是夕阳中的新娘；
波光里的艳影，
在我的心头荡漾。

软泥上的青荇，
油油的在水底招摇；
在康河的柔波里，
我甘心做一条水草！

那榆荫下的一潭，
不是清泉，是天上虹；
揉碎在浮藻间，
沉淀着彩虹似的梦。

寻梦？撑一支长，
向青草更青处漫；
满载一船星辉，
在星辉斑斓里放歌。

但我不能放歌，
悄悄是别离的笙箫；
夏虫也为我沉默，
沉默是今晚的康桥！

悄悄的我走了，
正如我悄悄的来；
我挥一挥衣袖，
不带走一片云彩。 ";
set @v_id="936";
set @v_code="324";
set @v_type_id="118";
set @v_author_id="5176";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="赠日本女郎";
set @v_body="最是那一低头的温柔，
象一朵水莲花不胜凉风的娇羞，
道一声珍重，道一声珍重，
那一声珍重里有蜜甜的忧愁——
沙扬娜拉！";
set @v_id="937";
set @v_code="325";
set @v_type_id="118";
set @v_author_id="5176";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="雪花的快乐";
set @v_body="假如我是一朵雪花，
翩翩的在半空里潇洒，
我一定认清我的方向——
飞扬，飞扬，飞扬，——
这地面上有我的方向。
不去那冷寞的幽谷，

不去那凄清的山麓，
也不上荒街去惆怅——
飞扬，飞扬，飞扬，——
你看，我有我的方向！

在半空里娟娟的飞舞，
认明了那清幽的住处，
等着她来花园里探望——
飞扬，飞扬，飞扬，——
啊，她身上有朱砂梅的清香！

那时我凭借我的身轻，
盈盈的②，沾住了她的衣襟，
贴近她柔波似的心胸——
消溶，消溶，消溶——
溶入了她柔波似的心胸！ ";
set @v_id="938";
set @v_code="326";
set @v_type_id="118";
set @v_author_id="5176";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="翡冷翠的一夜";
set @v_body="    你真的走了，明天？那我，那我，……
    你也不用管，迟早有那一天；
    你愿意记着我，就记着我，
    要不然趁早忘了这世界上
    有我，省得想起时空着恼，
    只当是一个梦，一个幻想；
    只当是前天我们见的残红，
    怯怜怜的在风前抖擞，一瓣，
    两瓣，落地，叫人踩，变泥……
    唉，叫人踩，变泥——变了泥倒干净，
    这半死不活的才叫是受罪，
    看着寒伧，累赘，叫人白眼——
    天呀！你何苦来，你何苦来……
    我可忘不了你，那一天你来，
    就比如黑暗的前途见了光彩，
    你是我的先生，我爱，我的恩人，
    你教给我什么是生命，什么是爱，
    你惊醒我的昏迷，偿还我的天真。
    没有你我哪知道天是高，草是青？
    你摸摸我的心，它这下跳得多快；
    再摸我的脸，烧得多焦，亏这夜黑
    看不见；爱，我气都喘不过来了，
    别亲我了；我受不住这烈火似的活，
    这阵子我的灵魂就象是火砖上的
    熟铁，在爱的槌子下，砸，砸，火花
    四散的飞洒……我晕了，抱着我，
    爱，就让我在这儿清静的园内，
    闭着眼，死在你的胸前，多美！
    头顶白树上的风声，沙沙的，
    算是我的丧歌，这一阵清风，
    橄榄林里吹来的，带着石榴花香，
    就带了我的灵魂走，还有那萤火，
    多情的殷勤的萤火，有他们照路，
    我到了那三环洞的桥上再停步，
    听你在这儿抱着我半暖的身体，
    悲声的叫我，亲我，摇我，咂我，……
    我就微笑的再跟着清风走，
    随他领着我，天堂，地狱，哪儿都成，
    反正丢了这可厌的人生，实现这死
    在爱里，这爱中心的死，不强如
    五百次的投生？……自私，我知道，
    可我也管不着……你伴着我死？
    什么，不成双就不是完全的“爱死”，
    要飞升也得两对翅膀儿打伙，
    进了天堂还不一样的要照顾，
    我少不了你，你也不能没有我；
    要是地狱，我单身去你更不放心，
    你说地狱不定比这世界文明
    （虽则我不信，）象我这娇嫩的花朵，
    难保不再遭风暴，不叫雨打，
    那时候我喊你，你也听不分明，——
    那不是求解脱反投进了泥坑，
    倒叫冷眼的鬼串通了冷心的人，
    笑我的命运，笑你懦怯的粗心？
    这话也有理，那叫我怎么办呢？
    活着难，太难就死也不得自由，
    我又不愿你为我牺牲你的前程……
    唉！你说还是活着等，等那一天！
    有那一天吗？——你在，就是我的信心；
    可是天亮你就得走，你真的忍心
    丢了我走？我又不能留你，这是命；
    但这花，没阳光晒，没甘露浸，
    不死也不免瓣尖儿焦萎，多可怜！
    你不能忘我，爱，除了在你的心里，
    我再没有命；是，我听你的话，我等，
    等铁树儿开花我也得耐心等；
    爱，你永远是我头顶的一颗明星：
    要是不幸死了，我就变一个萤火，
    在这园里，挨着草根，暗沉沉的飞，
    黄昏飞到半夜，半夜飞到天明，
    只愿天空不生云，我望得见天
    天上那颗不变的大星，那是你，
    但愿你为我多放光明，隔着夜，
    隔着天，通着恋爱的灵犀一点……

    　　六月十一日，一九二五年翡冷翠山中 ";
set @v_id="939";
set @v_code="327";
set @v_type_id="118";
set @v_author_id="5176";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="偶然";
set @v_body="我是天空里的一片云，
偶尔投影在你的波心－－
你不必讶异，
更无须欢喜－－
在转瞬间消灭了踪影。
你我相逢在黑夜的海上，
你有你的，我有我的，方向；
你记得也好，
最好你忘掉，
在这交会时互放的光亮！ ";
set @v_id="940";
set @v_code="328";
set @v_type_id="118";
set @v_author_id="5176";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="雨巷";
set @v_body="撑着油纸伞，独自
彷徨在悠长，悠长
又寂寥的雨巷，
我希望逢着
一个丁香一样地
结着愁怨的姑娘。
她是有
丁香一样的颜色，
丁香一样的芬芳，
丁香一样的忧愁，
在雨中哀怨，
哀怨又彷徨；
她彷徨在这寂寥的雨巷，
撑着油纸伞
像我一样，
像我一样地
默默彳亍着，
冷漠，凄清，又惆怅。
她静默地走近
走近，又投出
太息一般的眼光，
她飘过
像梦一般地，
像梦一般地凄婉迷茫。
像梦中飘过
一枝丁香地，
我身旁飘过这女郎；
她静静地远了，远了，
到了颓圮的篱墙，
走尽这雨巷。
在雨的哀曲里，
消了她的颜色，
散了她的芬芳，
消散了，甚至她的
太息般的眼光，
丁香般的惆怅。
撑着油纸伞，独自
彷徨在悠长，悠长
又寂寥的雨巷，
我希望飘过
一个丁香一样地
结着愁怨的姑娘。";
set @v_id="941";
set @v_code="329";
set @v_type_id="118";
set @v_author_id="5349";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="我用残损的手掌";
set @v_body="谁家动刀尺？
心也需要秋衣。

听鲛人的召唤，
听木叶的呼息！
风从每一条脉络进来，
窃听心的枯裂之音。

诗人云：心即是琴。
谁听过那古旧的阳春白雪？
为真知的死者的慰藉，
有人已将它悬在树梢，
为天籁之凭托——
但曾一度谛听的飘逝之音。

而断裂的吴丝蜀桐，
仅使人从弦柱间思忆华年。";
set @v_id="942";
set @v_code="330";
set @v_type_id="118";
set @v_author_id="5349";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="你还在我身边";
set @v_body="    瀑布的水逆流而上
蒲公英的种子从远处飘回，聚成伞的模样
太阳从西边升起 落向东方

子弹退回枪膛
运动员回到起跑线上
我交回录取通知书 忘了十年寒窗

厨房里飘来饭菜的香
你把我的卷子签好名字
关掉电视 帮我把书包背上";
set @v_id="943";
set @v_code="331";
set @v_type_id="118";
set @v_author_id="5348";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="童话";
set @v_body="“白桦为什么颤抖，妈妈？” 
——“他在细听鸟儿说话。” 
“鸟儿说些什么，妈妈？” 
——“说仙女傍晚把它们好一顿吓。” 
“仙女怎么会把鸟儿吓呢？” 
——“她追赶着白鸽在林中乱窜。” 
“仙女为什么要追赶白鸽？” 
——“她见白鸽差点淹死在水潭。” 

“白鸽为什么会差点淹死呢？” 
——“它想把掉到水里的星星啄上岸” 
“妈妈，它把水里的星星啄上来了吗？” 
——“孩子啊，这个我可答不上来。 
我只知道，等到仙女挨着白鸽的脸蛋时， 
就像如今我在亲你一样， 
亲呀亲呀，亲个没完。” ";
set @v_id="944";
set @v_code="332";
set @v_type_id="118";
set @v_author_id="5416";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="念一首诗给你听";
set @v_body="下雨过后的屋檐 果然 是适合风铃 
你从窗外看到 风刚刚冒出嫩芽的声音 
很轻而我决定了 在猫的眼睛上 旅行 
於是乎 所有的神秘都向后退 退成风景
只有隐藏的够灵巧的事情 才能长成 蒲公英
然后毫无负担的跟著 前进 很小心因为害怕 
将只敢在梦中喜欢你的我的那部份 吵醒 
於是乎 
我默念了一首诗 给你听
打开诗集的动作 
很小心 很轻  很轻 很小心 
就像猫跟风铃 
我念了一首诗 给你听 ";
set @v_id="945";
set @v_code="333";
set @v_type_id="118";
set @v_author_id="5405";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="诗笺";
set @v_body="听时光轻盈的引领着夜色的步伐 
像是只身旷野远离红尘喧嚣吵杂 
此刻灵魂沐浴在清辉的余香之下 
灯火阑珊处千思万绪调整了时差 

桌案边摆放一杯温热往事的浓茶 
宣纸上执笔的手还在仿隶书描画 
极细致的临摹出千年前那幕繁华 
于是诗的意境追溯至汉唐时人家 

这游弋在岁月昏黄中悠远的篇章 
终于穿越过氤氲找到一丝温暖的牵挂 
仿佛那枚流浪在边缘的寂寞明月 
也终于寻觅到一处任思念栖息的天涯";
set @v_id="946";
set @v_code="334";
set @v_type_id="118";
set @v_author_id="5405";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="潇湘";
set @v_body="明月潇湘的客栈 
我沉睡在皎洁的从前 
梦回唐朝的容颜 
一幅薄如蝉翼的画卷 

潮汐抚平过的沙滩 
最适合回忆搁浅 
漫步于这琥珀色海岸 
风吹动足音悠远 

看风花雪月的云烟 
印染些许天空的蓝 
思绪也一路去潮退 
终将成最美的诗篇 

唯有月色在水中潋滟 
宛若诗人般吟唱轻弹 
绵绵一曲春江花月夜 
在逾越迷漫传颂千年 ";
set @v_id="947";
set @v_code="335";
set @v_type_id="118";
set @v_author_id="5405";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="英雄冢";
set @v_body="纵然 将军面对的朝代为 泱泱盛唐 
这酒肆里的绣花鞋 却令江山 如此委婉 

胆还悬在梁 檐外那枚 楚腰纤细的夕阳 
却已沉入 伊人深闺里的染坊 

酒招旗 剽悍的晃 也野不过红颜回眸 一闪 
该是刀落的客栈 却任由一张宣纸 在鱼雁往返 

提笔的手 也还不够力悬腕 诗却已初露锋芒 
汉字 竟可如此细腻的 儿女情长 ";
set @v_id="948";
set @v_code="336";
set @v_type_id="118";
set @v_author_id="5405";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="所有的美好正在生长";
set @v_body="天空生长的花朵
叫醒大地上更多的颜色
大地生长的花朵
认真倾听盛夏的诉说
合欢以纤细测量树荫的体温
幽香半含，起起伏伏
木槿簪花轻笑
比起去年好像更甜了几分
所有的美好正在生长
荷花打着伞，盛装而来
一路擎着深爱，偎着蓝";
set @v_id="949";
set @v_code="337";
set @v_type_id="118";
set @v_author_id="5365";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="母亲的江山";
set @v_body="你给了我黑发
时光把它变浅
你给了我红颜
时光令之变暗
你给了我飞快
时光还你以缓慢
你给了我丰茂
时光报你以萧条
多年后，我变成了你
和时光争夺江山
是你，让予我
一车一马，整个棋盘";
set @v_id="950";
set @v_code="338";
set @v_type_id="118";
set @v_author_id="5365";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="行路的人，你要一无所想";
set @v_body="你要把手插在口袋里
那串暖得热乎乎的钥匙，你可以时而握着
时而放开，让它们唱出
你还未能写出的歌词
你要一无所想，步履轻盈
即使行囊在肩上生根，雪粘在头发上
雾霾挡住了视线
你可以左顾右盼
但不要停下来，这一点你最好学学风
不疲轮换萧瑟和葱茏
学学鸟儿，在摇摇晃晃的枝头
不舍歌喉清脆
有一些小小的快乐，你要把它撒在天空
留在傍晚之后。撒在路边
说不定哪天，你会与它再度重逢";
set @v_id="951";
set @v_code="339";
set @v_type_id="118";
set @v_author_id="5365";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="我有漂亮的村庄（星飞、大江刘合作）";
set @v_body="我有漂亮的村庄
那里孤独的人都像紫地丁一样
骄傲地活着
在岸坡，在沟渠
在任何有泥土的地方
不卑不亢

我有漂亮的村庄
那里河流都穿着五彩的衣裳
流苏点缀在冬的额头
旷野有风在歌唱
歌声注视月亮
在又冷又硬的冰层下明亮地摇晃";
set @v_id="952";
set @v_code="340";
set @v_type_id="118";
set @v_author_id="5365";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="用自己去爱一爱残存的浮萍";
set @v_body="用草地挥霍雨水
用绿荫回绝空泛
用繁茂解释无言
用满满解释甜甜
用星空去辨认曾经
用一天去印证漫漫
用歌一曲完成远与近的循环
用梦一场告诉时至今日的答案
用快乐还需节制一点
用悲伤也不要万万千千
用自己去爱一爱残存的浮萍
用还不肯了然的秋天渲染流水的画板";
set @v_id="953";
set @v_code="341";
set @v_type_id="118";
set @v_author_id="5365";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="我想像过去那样";
set @v_body="洗掉白日的油彩
脱掉摇花曳步的鞋子
到夜晚里去
松开高举的旗帜
放下喧嚣的酒樽
揭开连日紧堵口鼻的罩子
到春风里去
我想像过去那样
到春风的夜晚走走

把心和肺一起放进去
把影子和灵魂一起放进去
把说出来和说不出来的一起放进去
把流动的和凝结的一起放进去

然后，像过去那样
不必担心多少有毒悬浮物潜伏暗藏
随意做一个自由的深呼吸";
set @v_id="954";
set @v_code="342";
set @v_type_id="118";
set @v_author_id="5365";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="假如生活欺骗了你";
set @v_body="假如生活欺骗了你
不要悲伤 不要心急
忧郁的日子里须要镇静
相信吧 快乐的日子将会来临
心儿永远向往着未来
现在却常是忧郁
一切都是瞬息
一切都将会过去
而那过去了的
就会成为亲切的回忆 ";
set @v_id="955";
set @v_code="343";
set @v_type_id="118";
set @v_author_id="5412";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="从前慢";
set @v_body="记得早先少年时 
大家诚诚恳恳 
说一句 是一句

清早上火车站 
长街黑暗无行人 
卖豆浆的小店冒着热气

从前的日色变得慢 
车，马，邮件都慢 
一生只够爱一个人

从前的锁也好看 
钥匙精美有样子 
你锁了 人家就懂了 ";
set @v_id="956";
set @v_code="344";
set @v_type_id="118";
set @v_author_id="5411";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="年龄的问题";
set @v_body="爷爷的年龄，写在脸上的皱纹里；
马儿的年龄，嚼在嘴巴的牙齿里；
树木的年龄，藏在肚子的年轮里。
老师!那么池塘的年龄，
是不是画在一圈圈的涟漪里？ ";
set @v_id="957";
set @v_code="345";
set @v_type_id="118";
set @v_author_id="5350";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="热爱生命";
set @v_body="我不去想是否能够成功
既然选择了远方
便只顾风雨兼程

我不去想能否赢得爱情
既然钟情于玫瑰
就勇敢地吐露真诚

我不去想身后会不会袭来寒风冷雨
既然目标是地平线
留给世界的只能是背影

我不去想未来是平坦还是泥泞
只要热爱生命
一切，都在意料之中";
set @v_id="958";
set @v_code="346";
set @v_type_id="118";
set @v_author_id="5363";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="怀想";
set @v_body="我不知道
是否　还在爱你
如果爱着
为什么　会有那样一次分离

我不知道
是否　早已不再爱你
如果不爱
为什么　记忆没有随着时光
流去

回想你的笑靥
我的心　起伏难平
可恨一切
都已成为过去
只有婆娑的夜晚
一如从前　那样美丽 ";
set @v_id="959";
set @v_code="347";
set @v_type_id="118";
set @v_author_id="5363";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="假如你不够快乐";
set @v_body="假如你不够快乐
也不要把眉头深锁
人生本来短暂
为什么　还要栽培苦涩

打开尘封的门窗
让阳光雨露洒遍每个角落
走向生命的原野
让风儿熨平前额

博大可以稀释忧愁
深色能够覆盖浅色 ";
set @v_id="960";
set @v_code="348";
set @v_type_id="118";
set @v_author_id="5363";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="只要彼此爱过一次";
set @v_body="如果不曾相逢
也许　心绪永远不会沉重
如果真的失之交臂
恐怕一生也不得轻松

一个眼神
便足以让心海　掠过飓风
在贫瘠的土地上
更深地懂得风景

一次远行
便足以憔悴了一颗　羸弱的心
每望一眼秋水微澜
便恨不得　泪水盈盈

死怎能不　从容不迫
爱又怎能　无动于衷
只要彼此爱过一次
就是无憾的人生 ";
set @v_id="961";
set @v_code="349";
set @v_type_id="118";
set @v_author_id="5363";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="跨越自己";
set @v_body="我们可以欺瞒别人
却无法欺瞒自己
当我们走向枝繁叶茂的五月
青春就不再是一个谜

向上的路
总是坎坷又崎岖
要永远保持最初的浪漫
真是不容易

有人悲哀
有人欣喜
当我们跨越了一座高山
也就跨越了一个真实的自己";
set @v_id="962";
set @v_code="350";
set @v_type_id="118";
set @v_author_id="5363";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="旅行";
set @v_body="凡是遥远的地方
对我们都有一种诱惑
不是诱惑于美丽
就是诱惑于传说

即使远方的风景
并不尽如人意
我们也无需在乎
因为这实在是一个
迷人的错

仰首是春　俯首是秋
愿所有的幸福都追随着你
月圆是画　月缺是诗";
set @v_id="963";
set @v_code="351";
set @v_type_id="118";
set @v_author_id="5363";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="倘若才华得不到承认";
set @v_body="倘若才华得不到承认
与其诅咒　不如坚忍
在坚忍中积蓄力量
默默耕耘

诅咒　无济于事
只能让原来的光芒黯淡
在变得黯淡的光芒中
沦丧的更有　大树的精神

飘来的是云
飘去的也是云
既然今天
没人识得星星一颗
那么明日
何妨做　皓月一轮";
set @v_id="964";
set @v_code="352";
set @v_type_id="118";
set @v_author_id="5363";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="面朝大海，春暖花开";
set @v_body="从明天起，做一个幸福的人
喂马，劈柴，周游世界
从明天起，关心粮食和蔬菜
我有一所房子，面朝大海，春暖花开

从明天起，和每一个亲人通信
告诉他们我的幸福
那幸福的闪电告诉我的
我将告诉每一个人

给每一条河每一座山取一个温暖的名字
陌生人，我也为你祝福
愿你有一个灿烂的前程
愿你有情人终成眷属
愿你在尘世获得幸福
我只愿面朝大海，春暖花开";
set @v_id="965";
set @v_code="353";
set @v_type_id="118";
set @v_author_id="5159";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="五月的麦地";
set @v_body="全世界的兄弟们
要在麦地里拥抱
东方，南方，北方和西方
麦地里的四兄弟，好兄弟
回顾往昔
背诵各自的诗歌
要在麦地里拥抱

有时我孤独一人坐下
在五月的麦地　梦想众兄弟
看到家乡的卵石滚满了河滩
黄昏常存弧形的天空
让大地上布满哀伤的村庄
有时我孤独一人坐在麦地里为众兄弟背诵中国诗歌
没有了眼睛也没有了嘴唇";
set @v_id="966";
set @v_code="354";
set @v_type_id="118";
set @v_author_id="5159";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="祖国(以梦为马)";
set @v_body="我要做远方的忠诚的儿子
和物质的短暂情人
和所有以梦为马的诗人一样
我不得不和烈士和小丑走在同一道路上

万人都要将火熄灭　我一人独将此火高高举起
此火为大　开花落英于神圣的祖国
和所有以梦为马的诗人一样
我籍次火得度一生的茫茫黑夜

此火为大　祖国的语言和乱石投筑的梁山城寨
以梦为上的敦煌——那七月也会寒冷的骨骼
如白雪的柴和坚硬的条条白雪　横放在众神之山
和所有以梦为马的诗人一样
我投入此火　这三者是囚禁我的灯盏　吐出光辉

万人都要从我刀口走过　去建筑祖国的语言
我甘愿一切从头开始
和所有以梦为马的诗人一样
我也愿将牢底坐穿

众神创造物中只有我最易朽　带着不可抗拒的死亡的速度
只有粮食是我的珍爱　我将她紧紧抱住　抱住她在故乡生儿育女
和所有以梦为马的诗人一样
我也愿自己埋葬在四周高高的山上　守望平静家园

面对大河我无限惭愧
我年华虚度　空有一身疲倦
和所有以梦为马的诗人一样
岁月易逝　一滴不剩　水滴中有一匹马儿一命归天

千年后如若我再生于祖国的河岸
千年后我再次拥有中国的稻田　和周天子的雪山　天马赐踏
和所有以梦为马的诗人一样
我选择永恒的事业

我的事业　就是要成为太阳的一生
他从古到今——“日”——他无比辉煌无比光明
和所有以梦为马的诗人一样
最后我被黄昏的众神抬入不朽的太阳

太阳是我的名字
太阳是我的一生
太阳的山顶埋葬　诗歌的尸体——千年王国和我
骑着五千年凤凰和名字叫“马”的龙——我必将失败
但诗歌本身以太阳必将胜利";
set @v_id="967";
set @v_code="355";
set @v_type_id="118";
set @v_author_id="5159";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="黑夜的献诗";
set @v_body="黑夜从大地上升起
遮住了光明的天空
丰收后荒凉的大地
黑夜从你内部上升

你从远方来，我到远方去
遥远的路程经过这里
天空一无所有
为何给我安慰

丰收之后荒凉的大地
人们取走了一年的收成
取走了粮食骑走了马
留在地里的人，埋得很深

草杈闪闪发亮，稻草堆在火上
稻谷堆在黑暗的谷仓
谷仓中太黑暗，太寂静，太丰收
也太荒凉，我在丰收中看到了阎王的眼睛

黑雨滴一样的鸟群
从黄昏飞入黑夜
黑夜一无所有
为何给我安慰

走在路上
放声歌唱
大风刮过山岗
上面是无边的天空";
set @v_id="968";
set @v_code="356";
set @v_type_id="118";
set @v_author_id="5159";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="九月";
set @v_body="目击众神死亡的草原上野花一片
远在远方的风比远方更远
我的琴声呜咽　泪水全无
我把这远方的远归还草原
一个叫马头　一个叫马尾
我的琴声呜咽　泪水全无

远方只有在死亡中凝聚野花一片
明月如镜高悬草原映照千年岁月
我的琴声呜咽　泪水全无
只身打马过草原";
set @v_id="969";
set @v_code="357";
set @v_type_id="118";
set @v_author_id="5159";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="星星";
set @v_body="当夜色降临 
我站在台阶上倾听 
星星蜂拥在花园里 
而我站在黑暗中 

听，一颗星星落地作响 
你别赤脚在这草地上散步 
我的花园到处是星星的碎片";
set @v_id="970";
set @v_code="358";
set @v_type_id="118";
set @v_author_id="5367";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="致橡树";
set @v_body="我如果爱你——
绝不像攀援的凌霄花，
借你的高枝炫耀自己：
我如果爱你——
绝不学痴情的鸟儿，
为绿荫重复单调的歌曲；
也不止像泉源，
常年送来清凉的慰籍；
也不止像险峰，增加你的高度，衬托你的威仪。
甚至日光。
甚至春雨。
不，这些都还不够！
我必须是你近旁的一株木棉，
做为树的形象和你站在一起。
根，紧握在地下，
叶，相触在云里。
每一阵风过，
我们都互相致意，
但没有人
听懂我们的言语。
你有你的铜枝铁干，
像刀，像剑，
也像戟，
我有我的红硕花朵，
像沉重的叹息，
又像英勇的火炬，
我们分担寒潮、风雷、霹雳；
我们共享雾霭流岚、虹霓，
仿佛永远分离，
却又终身相依，
这才是伟大的爱情，
坚贞就在这里：
不仅爱你伟岸的身躯，
也爱你坚持的位置，脚下的土地。";
set @v_id="971";
set @v_code="359";
set @v_type_id="118";
set @v_author_id="5173";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="祖国啊，我亲爱的祖国";
set @v_body="我是你河边上破旧的老水车，
数百年来纺着疲惫的歌；
我是你额上熏黑的矿灯，
照你在历史的隧洞里蜗行摸索
我是干瘪的稻穗，是失修的路基；
是淤滩上的驳船
把纤绳深深
勒进你的肩膊，
——祖国啊！
我是贫困，
我是悲哀。
我是你祖祖辈辈
痛苦的希望啊，
是“飞天”袖间
千百年未落到地面的花朵，
——祖国啊！
我是你簇新的理想，
刚从神话的蛛网里挣脱；
我是你雪被下古莲的胚芽；
我是你挂着眼泪的笑涡；
我是新刷出的雪白的起跑线；
是绯红的黎明
正在喷薄；
—— 祖国啊！
我是你的十亿分之一，
是你九百六十万平方的总和；
你以伤痕累累的乳房
喂养了
迷惘的我、深思的我、 沸腾的我；
那就从我的血肉之躯上
去取得
你的富饶、你的荣光、你的自由；
—— 祖国啊，
我亲爱的祖国！";
set @v_id="972";
set @v_code="360";
set @v_type_id="118";
set @v_author_id="5173";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="这也是一切";
set @v_body="不是一切大树，
都被暴风折断；
不是一切种子，
都找不到生根的土壤；
不是一切真情，
都流失在人心的沙漠里；
不是一切梦想，
都甘愿被折掉翅膀。
不，不是一切
都像你说的那样！
不是一切火焰，
都只燃烧自己
而不把别人照亮；
不是一切星星，
都仅指示黑暗
而不报告曙光；
不是一切歌声，
都掠过耳旁
而不留在心上。
不，不是一切
都像你说的那样！
不是一切呼吁都没有回响；
不是一切损失都无法补偿；
不是一切深渊都是灭亡；
不是一切灭亡都覆盖在弱者头上；
不是一切心灵
都可以踩在脚下，烂在泥里；
不是一切后果
都是眼泪血印，而不展现欢容。
一切的现在都孕育着未来，
未来的一切都生长于它的昨天。
希望，而且为它斗争，
请把这一切放在你的肩上。";
set @v_id="973";
set @v_code="361";
set @v_type_id="118";
set @v_author_id="5173";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="双桅船";
set @v_body="雾打湿了我的双翼，
可风却不容我再迟疑。
岸啊，心爱的岸，
昨天刚刚和你告别，
今天你又在这里。
明天我们将在，
另一个纬度相遇。
是一场风暴，一盏灯，
把我们联系在一起。
是一场风暴，另一盏灯，
使我们再分东西。
不怕天涯海角，
岂在朝朝夕夕。
你在我的航程上，
我在你的视线里。";
set @v_id="974";
set @v_code="362";
set @v_type_id="118";
set @v_author_id="5173";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="神女峰";
set @v_body="在向你挥舞的各色花帕中
是谁的手突然收回
紧紧捂住了自己的眼睛
当人们四散离去，谁
还站在船尾
衣裙漫飞，如翻涌不息的云
江涛
高一声
低一声
美丽的梦留下美丽的优伤
人间天上，代代相传
但是，心
真能变成石头吗
为盼望远天的杳鹤
而错过无数次春江月明
沿着江岸
金光菊和女贞子的洪流
正煽动新的背叛
与其在悬崖上展览千年
不如在爱人肩头痛哭一晚 ";
set @v_id="975";
set @v_code="363";
set @v_type_id="118";
set @v_author_id="5173";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="我爱这土地";
set @v_body="假如我是一只鸟，
我也就应用嘶哑的喉咙歌唱：
这被暴风雨所打击的土地，
这永远汹涌着我们的悲愤的河流，
这无止息地吹刮着的激怒的风，
和那来自林间的无比温柔的黎明……
——然后我死了，
连羽毛也腐烂在土地里面。
为什么我的眼里常含泪水？
因为我对这土地爱得深沉…… ";
set @v_id="976";
set @v_code="364";
set @v_type_id="118";
set @v_author_id="5344";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="礁石";
set @v_body="一个浪，一个浪
无休止地扑过来
每一个浪都在它脚下
被打成碎沫、散开……
它的脸上和身上
象刀砍过的一样
但它依然站在那里
含着微笑，看着海洋……";
set @v_id="977";
set @v_code="365";
set @v_type_id="118";
set @v_author_id="5344";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="大堰河──我的褓姆";
set @v_body="大堰河，是我的褓姆。
她的名字就是生她的村庄的名字，
她是童养媳，
大堰河，是我的褓姆。

我是地主的儿子；
也是吃了大堰河的奶而长大了的
大堰河的儿子。
大堰河以养育我而养育她的家，
而我，是吃了你的奶而被养育了的，
大堰河啊，我的褓姆。

大堰河，今天我看到雪使我想起了你：
你的被雪压着的草盖的坟墓，
你的关闭了的故居檐头的枯死的瓦菲，
你的被典押了的一丈平方的园地，
你的门前的长了青苔的石椅，
大堰河，今天我看到雪使我想起了你。

你用你厚大的手掌把我抱在怀里，抚摸我；
在你搭好了灶火之后，
在你拍去了围裙上的炭灰之后，
在你尝到饭已煮熟了之后，
在你把乌黑的酱碗放到乌黑的桌子上之后，
在你补好了儿子们的为山腰的荆棘扯破的衣服之后，
在你把小儿被柴刀砍伤了的手包好之后，
在你把夫儿们的衬衣上的虱子一颖颗的掐死之后，
在你拿起了今天的第一颗鸡蛋之后，
你用你厚大的手掌把我抱在怀里，抚摸我。

我是地主的儿子，
在我吃光了你大堰河的奶之后，
我被生我的父母领回到自己的家里。
啊，大堰河，你为什么要哭？

我做了生我的父母家里的新客了！
我摸着红漆雕花的家具，
我摸着父母的睡床上金色的花纹，
我呆呆地看着檐头的我不认得的“天伦叙乐”的匾，
我摸着新换上的衣服的丝的和贝壳的钮扣，
我看着母亲怀里的不熟识的妹妹，
我坐着油漆过的安了火钵的炕凳，
我吃着碾了三番的白米的饭，
但，我是这般忸怩不安！因为我
我做了生我的父母家里的新客了。

大堰河，为了生活，
在她流尽了她的乳液之后，
她就开始用抱过我的两臂劳动了；
她含着笑，洗着我们的衣服，
她含着笑，提着菜篮到村边的结冰的池塘去，
她含着笑，切着冰屑悉索的萝卜，
她含着笑，用手掏着猪吃的麦糟，
她含着笑，扇着敦肉的炉子的火，
她含着笑，背了团箕到广场上去
晒好那些大豆和小麦，
大堰河，为了生活，
在她流尽了她的乳液之后，
她就用抱过我的两臂，劳动了。

大堰河，深爱着她的乳儿；
在年节里，为了他，忙着切那冬米的糖，
为了他，常悄悄地走到村边的她的家里去，
为了他，走到她的身边叫一声“妈”，
大堰河，把他画的大红大绿的关云长
贴在灶边的墙上，
大堰河，会对她的邻居夸口赞美她的乳儿；
大堰河曾做了一个不能对人说的梦：
在梦里，她吃着她的乳儿的婚酒，
坐在辉煌的结彩的堂上，
而她的娇美的媳妇亲切地叫她“婆婆”
……
大堰河，深爱她的乳儿！

大堰河，在她的梦没有做醒的时候已死了。
她死时，乳儿不在她的旁侧，
她死时，平时打骂她的丈夫也为她流泪，
五个儿子，个个哭得很悲，
她死时，轻轻地呼着她的乳儿的名字，
大堰河，已死了，
她死时，乳儿不在她的旁侧。

大堰河，含泪的去了！
同着四十几年的人世生活的凌侮，
同着数不尽的奴隶的凄苦，
同着四块钱的棺材和几束稻草，
同着几尺长方的埋棺材的土地，
同着一手把的纸钱的灰，
大堰河，她含泪的去了。

这是大堰河所不知道的：
她的醉酒的丈夫已死去，
大儿做了土匪，
第二个死在炮火的烟里，
第三，第四，第五
在师傅和地主的叱骂声里过着日子。
而我，我是在写着给予这不公道的世界的咒语。
当我经了长长的飘泊回到故土时，
在山腰里，田野上，
兄弟们碰见时，是比六七年前更要亲密！
这，这是为你，静静的睡着的大堰河
所不知道的啊！

大堰河，今天，你的乳儿是在狱里，
写着一首呈给你的赞美诗，
呈给你黄土下紫色的灵魂，
呈给你拥抱过我的直伸着的手，
呈给你吻过我的唇，
呈给你泥黑的温柔的脸颜，
呈给你养育了我的乳房，
呈给你的儿子们，我的兄弟们，
呈给大地上一切的，
我的大堰河般的褓姆和她们的儿子，
呈给爱我如爱她自己的儿子般的大堰河。

大堰河，
我是吃了你的奶而长大了的
你的儿子，
我敬你
爱你！ ";
set @v_id="978";
set @v_code="366";
set @v_type_id="118";
set @v_author_id="5344";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="黎明的通知";
set @v_body="为了我的祈愿
诗人啊，你起来吧
而且请你告诉他们
说他们所等待的已经要来
说我已踏着露水而来
已借着最后一颗星的照引而来
我从东方来
从汹涌着波涛的海上来
我将带光明给世界
又将带温暖给人类
借你正直人的嘴
请带去我的消息
通知眼睛被渴望所灼痛的人类
和远方的沉浸在苦难里的城市和村庄
请他们来欢迎我
白日的先驱，光明的使者
打开所有的窗子来欢迎
打开所有的门来欢迎
请鸣响汽笛来欢迎
请吹起号角来欢迎
请清道夫来打扫街衢
请搬运车来搬去垃圾
让劳动者以宽阔的步伐走在街上吧
让车辆以辉煌的行列从广场流过吧
请村庄也从潮湿的雾里醒来
为了欢迎我打开它们的篱笆
请村妇打开她们的鸡埘
请农夫从畜棚牵出耕牛
借你的热情的嘴通知他们
说我从山的那边来，从森林的那边来
请他们打扫干净那些晒场
和那些永远污秽的天井
请打开那糊有花纸的窗子
请打开那贴着春联的门
请叫醒殷勤的女人
和那打着鼾声的男子
请年轻的情人也起来
和那些贪睡的少女
请叫醒困倦的母亲
和他身边的婴孩
请叫醒每个人
连那些病者和产妇
连那些衰老的人们
呻吟在床上的人们
连那些因正义而战争的负伤者
和那些因家乡沦亡而流离的难民
请叫醒一切的不幸者
我会一并给他们以慰安
请叫醒一切爱生活的人
工人，技师及画家
请歌唱者唱着歌来欢迎
用草与露水所渗合的声音
请舞蹈者跳着舞来欢迎
披上她们白雾的晨衣
请叫那些健康而美丽的醒来
说我马上要来叩打他们的窗门
请你忠实于时间的诗人
带给人类以慰安的消息
请他们准备欢迎，请所有的人准备欢迎
当雄鸡最后一次鸣叫的时候我就到来
请他们用虔诚的眼睛凝视天边
我将给所有期待我的以最慈惠的光辉
趁这夜已快完了，请告诉他们
说他们所等待的就要来了 ";
set @v_id="979";
set @v_code="367";
set @v_type_id="118";
set @v_author_id="5344";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="给太阳";
set @v_body="早晨，我从睡眠中醒来，
看见你的光辉就高兴；
──虽然昨夜我还是困倦，
而且被无数的恶梦纠缠。
你新鲜、温柔、明洁的光辉，
照在我久未打开的窗上，
把窗纸敷上浅黄如花粉的颜色，
嵌在浅蓝而整齐的格影里，
我心里充满感激，从床上起来，
打开已关了一个冬季的窗门，
让你把全金丝织的明丽的台巾，
铺展在我临窗的桌子上。
于是，我惊喜看见你：
这样的真实，不容许怀疑，
你站立在对面的山巅，
而且笑得那么明朗。
我用力睁开眼睛看你，
渴望能捕捉你的形象，
多么强烈，多么恍惚，多么庄严！
你的光芒刺痛我的瞳孔。
太阳啊，你这不朽的哲人，
你把快乐带给人间，
即使最不幸的看见你，
也在心里感受你的安慰。
你是时间的锻冶工，
美好的生活镀金匠；
你把日子铸成无数金轮，
飞旋在古老的荒原上……
假如没有你，太阳，
一切生命将匍匐在阴暗里，
即使有翅膀，也只能像蝙蝠
在永恒的黑夜里飞翔。
我爱你像人们爱他们的母亲，
你用光热哺育我的观念和思想──
使我热情地生活，为理想而痛苦，
直到我的生命被死亡带走。
经历了寂寞漫长的冬季，
今天，我想到山巅上去，
解散我的衣服，赤裸着，
在你的光辉里沐浴我的灵魂…… ";
set @v_id="980";
set @v_code="368";
set @v_type_id="118";
set @v_author_id="5344";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="梦";
set @v_body="醒着的时候
只能幻想

而梦
却在睡着的时候来访

或许是童年的青梅竹马
或许是有朋友来自远方

钢丝床上有痛苦
稻草堆上有欢语
匮乏时的赠予
富足时的失窃

不是一场虚惊
就是若有所失 ";
set @v_id="981";
set @v_code="369";
set @v_type_id="118";
set @v_author_id="5344";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="雪落在中国的土地上";
set @v_body="雪落在中国的土地上，
寒冷在封锁着中国呀……

风，
像一个太悲哀了的老妇
紧紧地跟随着
伸出寒冷的指爪
拉扯着行人的衣襟，
用着你土地一样古老的
一刻也不停地絮聒着……

那从林间出现的，
赶着马车的
你中国的农夫，
戴着皮帽，
冒着大雪
要到哪儿去呢？

告诉你
我也是农人的后裔──

由于你们的
刻满了痫苦的皱纹的脸
我能如此深深地
知道了
生活在草原上的人们的
岁月的艰辛。

而我
也并不比你们快乐啊
──躺在时间的河流上
苦难的浪涛
曾经几次把我吞没而又卷起──
流浪与监禁
已失去了我的青春的最可贵的日子，
我的生命
也像你们的生命
一样的憔悴呀。

雪落在中国的土地上，
寒冷在封锁着中国呀……

沿着雪夜的河流，
一盏小油灯在徐缓地移行，
那破烂的乌篷船里
映着灯光，垂着头
坐着的是谁呀？

──啊，你
蓬发垢面的小妇，
是不是
你的家
──那幸福与温暖的巢穴
已枝暴戾的敌人
烧毁了么？

是不是
也像这样的夜间，
失去了男人的保护，
在死亡的恐怖里
你已经受尽敌人刺刀的戏弄7

咳，就在如此寒冷的今夜
无数的
我们的年老的母亲，
就像异邦人
不知明天的车轮
要滚上怎样的路程？
──而且
中国的路
是如此的崎岖，
是如此的泥泞呀。

雪落在中国的土地上：
寒冷在封锁着中国呀……

那些被烽火所啮啃着的地域，
无数的，土地的垦植者
失去了他们所饲养的家畜
失去了他们把沃的田地
拥挤在
生活的绝望的污巷里；
饥谨的大地
伸向阴暗的天
伸出乞援的
颤抖着的两臂。

中国的痛苦与灾难
像这雪夜一样广阔而又漫长呀！

雪落在中国的土地上，
寒冷在封锁着中国呀……

中国，
我的在没有灯光的晚上
所写的无力的诗句
能给你些许的温暖么？
·1937年12月28日夜间 ";
set @v_id="982";
set @v_code="370";
set @v_type_id="118";
set @v_author_id="5344";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="我想和你一起生活";
set @v_body="我想和你一起生活
在某个小镇，
共享无尽的黄昏
和绵绵不绝的钟声。
在这个小镇的旅店里——
古老时钟敲出的
微弱响声
像时间轻轻滴落。
有时候，在黄昏，自顶楼某个房间传来
笛声，
吹笛者倚著窗牖，
而窗口大朵郁金香。
此刻你若不爱我，我也不会在意。
在房间中央，一个磁砖砌成的炉子，
每一块磁砖上画著一幅画：
一颗心，一艘帆船，一朵玫瑰。
而自我们唯一的窗户张望，
雪，雪，雪。
你会躺成我喜欢的姿势：慵懒，
淡然，冷漠。
一两回点燃火柴的
刺耳声。
你香烟的火苗由旺转弱，
烟的末梢颤抖著，颤抖著
短小灰白的烟蒂——连灰烬
你都懒得弹落——
香烟遂飞舞进火中。";
set @v_id="983";
set @v_code="371";
set @v_type_id="118";
set @v_author_id="5347";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="回延安";
set @v_body="    一

心口呀莫要这么厉害的跳，
灰尘呀莫把我眼睛挡住了……
手抓黄土我不放，
紧紧贴在心窝上。

……几回回梦里回延安，
双手搂定宝塔山。
千声万声呼唤你
──母亲延安就在这里！

杜甫川唱来柳林铺笑，
红旗飘飘把手招。
白羊肚手巾红腰带，
亲人们迎过延河来。

满心话登时说不过来，
一头扑在亲人怀……

二

……二十里铺送过柳林铺迎，
分别十年又回家中。
树梢树枝树根根，
亲山亲水有亲人。

羊羔羔吃奶望着妈，
小米饭养活我长大。
东山的糜子西山的谷，
肩膀上的红旗手中的书。

手把手儿教会了我，
母亲打发我们过黄河。
革命的道路千万里，
天南海北想着你……

三

米酒油馍木炭火，
团团围定炕头坐。
满窑里围的不透风，
脑畔上还响着脚步声。

老爷爷进门气喘得紧：
“我梦见鸡毛信来──
可真见亲人……”
亲人见了亲人面，
双眼的眼泪眼眶里转。

保卫延安你们费了心，
白头发添了几根根。
团支书又领进社主任，
当年的放羊娃如今长成人。

白生生的窗纸红窗花，
娃娃们争抢来把手儿拉。
一口口的米酒千万句话，
长江大河起浪花。

十年来革命大发展，
说不尽这三千六百天……

四

千万条腿来千万只眼，
也不够我走来也不够我看。
头顶着蓝天大明镜，
延安城照在我心中──

一条条街道宽又平，
一座座楼房披彩虹；
一盏盏电灯亮又明，
一排排绿树迎春风……

对照过去我认不出了你，
母亲延安换新衣。

五

杨家岭的红旗啊高高的飘，
革命万里起高潮！
宝塔山下留脚印，
毛主席登上了天安门！

枣园的灯光照人心，
延河滚滚喊“前进”！
赤卫队……青年团……红领巾，
走着咱英雄几辈辈人……

社会主义路上大踏步走，
光荣的延河还要在前头！
身长翅膀吧脚生云，
再回延安看母亲！

·1956年3月9日 延安";
set @v_id="984";
set @v_code="372";
set @v_type_id="118";
set @v_author_id="5161";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="错误";
set @v_body="我打江南走过
那等在季节里的容顏
如莲花的开落

东风不来
三月的柳絮不飞
你底心如小小寂寞的城
恰若青石的街道向晚
音不响，三月的春帷不揭
你底心，是小小的窗扉紧掩

我达达的马蹄
是美丽的错误
我不是归人
是个过客……";
set @v_id="985";
set @v_code="373";
set @v_type_id="118";
set @v_author_id="5370";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="水手刀";
set @v_body="长春籐一样
热带的情丝
挥一挥手即断了
挥沉了处子般的
款摆著绿的岛
挥沉了半个夜的星星
挥出一程风雨来

一把古老的水手刀
被离别磨亮
被用于寂寞
被用于欢乐
被用于航向一切逆风的
桅蓬与绳索……";
set @v_id="986";
set @v_code="374";
set @v_type_id="118";
set @v_author_id="5370";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="秋天";
set @v_body="黑夜是凝滞的岁月， 
岁月是流动的黑夜。
你停在门口，
回过头，递给我短短的一瞥。
这就是离别吗？
难道一切都将被忘却？
像绚丽的秋天过去，
到处要蒙上冷漠的白雪。
我珍爱果实，
但也不畏惧这空旷的拒绝。
只要心灵饮着热血，
未来就没有凋残的季节！
秋风摇荡繁星，
哦，那是永恒在天空书写；
是的，一瞥就足够了，
我已该深深把你感谢。";
set @v_id="987";
set @v_code="375";
set @v_type_id="118";
set @v_author_id="5406";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="我的幻想";
set @v_body="我在幻想着，
幻想在破灭着；
幻想总把破灭宽恕，
破灭却从不把幻想放过。";
set @v_id="988";
set @v_code="376";
set @v_type_id="118";
set @v_author_id="5406";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="我赞美世界";
set @v_body="我赞美世界，
用蜜蜂的歌，
蝴蝶的舞，
和花朵的诗。
月亮，
遗失在夜空中，
像是一枚卵石。
星群，
散落在黑夜里，
像是细小的金沙。
用夏夜的风，
来淘洗吧！
你会得到宇宙的光华。
把牧童
草原样浓绿的短曲；
把猎人
森林样丰富的幻想；
把农民
麦穗样金黄的欢乐；
把渔人
水波样透明的希望；
……
把全天下的：海洋、高山
平原、江河，
把七大州：
早晨、傍晚、日出
月落，
从生活中，睡梦中，
投入思想的熔岩，
凝成我黎明一样灿烂的
——诗歌。";
set @v_id="989";
set @v_code="377";
set @v_type_id="118";
set @v_author_id="5406";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="一代人（外两首）";
set @v_body="一 代 人
 
黑夜给了我黑色的眼睛
我却用它寻找光明
 
 
摄
 
阳光
在天上一闪，
又被乌云埋掩。
暴雨冲洗着，
我灵魂的底片。
 
 
祭
 
我把你的誓言
把爱
刻在蜡烛上
看它怎样
被泪水淹没
被心火烧完
看那最后一念
怎样灭绝
怎样被风吹散";
set @v_id="990";
set @v_code="378";
set @v_type_id="118";
set @v_author_id="5406";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="远和近";
set @v_body="你 
一会看我 
一会看云 
我觉得 
你看我时很远 
你看云时很近";
set @v_id="991";
set @v_code="379";
set @v_type_id="118";
set @v_author_id="5406";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="是树木游泳的力量";
set @v_body="是树木游泳的力量 
使鸟保持它的航程 
使它想起潮水的声音 
鸟在空中说话 
它说：中午 
它说：树冠的年龄 

芳香覆盖我们全身 
长长清凉的手臂越过内心 
我们在风中游泳 
寂静成型 
我们看不见最初的日子 
最初，只有爱情 ";
set @v_id="992";
set @v_code="380";
set @v_type_id="118";
set @v_author_id="5406";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="我是一个任性的孩子";
set @v_body="也许
我是被妈妈宠坏的孩子
我任性
我希望
每一个时刻
都像彩色蜡笔那样美丽
我希望
能在心爱的白纸上画画
画出笨拙的自由
画下一只永远不会
流泪的眼睛
一片天空
一片属于天空的羽毛和树叶
一个淡绿的夜晚和苹果
我想画下早晨
画下露水
所能看见的微笑
画下所有最年轻的
没有痛苦的爱情
画下想象中
我的爱人
她没有见过阴云
她的眼睛是晴空的颜色
她永远看着我
永远，看着
绝不会忽然掉过头去
我想画下遥远的风景
画下清晰的地平线和水波
画下许许多多快乐的小河
画下丘陵——
长满淡淡的茸毛
我让它们挨得很近
让它们相爱
让每一个默许
每一阵静静的春天的激动
都成为一朵小花的生日
我还想画下未来
我没见过她，也不可能
但知道她很美
我画下她秋天的风衣
画下那些燃烧的烛火和枫叶
画下许多因为爱她
而熄灭的心
画下婚礼
画下一个个早早醒来的节日——
上面贴着玻璃糖纸
和北方童话的插图
我是一个任性的孩子
我想涂去一切不幸
我想在大地上
画满窗子
让所有习惯黑暗的眼睛
都习惯光明
我想画下风
画下一架比一架更高大的山岭
画下东方民族的渴望
画下大海——
无边无际愉快的声音
最后，在纸角上
我还想画下自己
画下一只树熊
他坐在维多利亚深色的丛林里
坐在安安静静的树枝上
发愣
他没有家
没有一颗留在远处的心
他只有，许许多多
浆果一样的梦
和很大很大的眼睛
我在希望
在想
但不知为什么
我没有领到蜡笔
没有得到一个彩色的时刻
我只有我
我的手指和创痛
只有撕碎那一张张
心爱的白纸
让它们去寻找蝴蝶
让它们从今天消失
我是一个孩子
一个被幻想妈妈宠坏的孩子
我任性 ";
set @v_id="993";
set @v_code="381";
set @v_type_id="118";
set @v_author_id="5406";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="一个人应该活得是自己并且干净";
set @v_body="人的生命里有一种能量，它使你不安宁。说它是欲望也行，幻想也行，妄想也行，总之它不可能停下来，它需要一个表达形式。这个形式可能是革命，也可能是爱情；可能是搬一块石头，也可能是写一首诗。只要这个形式和生命力里的这个能量吻合了，就有了一个完美的过程。 

一个彻底诚实的人是从不面对选择的，那条路永远会清楚无二地呈现在你面前，这和你的憧憬无关，就像你是一棵苹果树，你憧憬结橘子，但是你还是诚实地结出苹果一样。 

西方爱情是强烈开放的花朵，东方爱情是两朵花之间微妙的芳香。 

自由并不是你不知道干什么好，也不是你干什么都可以不坐牢；自由是你清楚无疑你要干什么，不装蒜，不矫揉造作，无论什么功利结果，会不会坐牢或者送死，都不在话下了。对于惶惑不知道干什么的人来说，自由是不存在的；对于瞻前顾后、患得患失的人来说，自由是不可及的。 

一个人，生活可以变得好，也可以变得坏；可以活得久，也可以活得不久；可以做一个艺术家，也可以锯木头，没有多大区别。但是有一点，就是他不能面目全非，他不能变成一个鬼，他不能说鬼话、说谎言，他不能在醒来的时候看见自己觉得不堪入目。一个人应该活得是自己并且干净。 

命运不是风来回吹，命运是大地，走到哪里你都在命中。 

贾宝玉是真性情，鲁智深也是真性情；鲁智深一句唱词儿“赤条条来去无牵挂”，贾宝玉眼泪就下来了，顿时就有了感觉。可是你让贾宝玉抡个棍子去打，那无疑是找死。他们爱好不同，性情很不一样，但是呢，都是真性情，它就通了。 

从叶到花，或从花到叶，于科研是一个过程，而于生命自身则永远只在此刻。花和叶都是一种记忆方式。果子同时也是叶子。生命是闪耀的此刻，不是过程，就像芳香不需要道路一样。 

中国人只创造了两个理想，一个是山中的桃花源，一个是墙里的大观园。我的笑话不过是把大观园搬到了山里，忘了林黛玉的药锄是葬花用的。 

我到了新西兰一个小岛上，把身体交给了劳动。四年之后，有一天，我忽然看见黑色的鸟停在月亮里，树上的花早就开了，红花已经落了满地。这时候我才感到我从文 化中间、文字中间走了出来。万物清清楚楚地呈现在你的心里，一阵风吹过，鸟就开始叫了，树就开始响了。这个时候我明白了一个道理：只有在你生命美丽的时 候，世界才是美丽的。 ";
set @v_id="994";
set @v_code="382";
set @v_type_id="118";
set @v_author_id="5406";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="相信未来";
set @v_body="当蜘蛛网无情地查封了我的炉台  
当灰烬的余烟叹息着贫困的悲哀  
我依然固执地铺平失望的灰烬  
用美丽的雪花写下：相信未来  
当我的紫葡萄化为深秋的露水  
当我的鲜花依偎在别人的情怀  
我依然固执地用凝霜的枯藤  
在凄凉的大地上写下：相信未来  
我要用手指那涌向天边的排浪  
我要用手掌那托住太阳的大海  
摇曳着曙光那枝温暖漂亮的笔杆  
用孩子的笔体写下：相信未来  
我之所以坚定地相信未来  
是我相信未来人们的眼睛  
她有拨开历史风尘的睫毛  
她有看透岁月篇章的瞳孔  
不管人们对于我们腐烂的皮肉  
那些迷途的惆怅、失败的苦痛  
是寄予感动的热泪、深切的同情  
还是给以轻蔑的微笑、辛辣的嘲讽  
我坚信人们对于我们的脊骨  
那无数次的探索、迷途、失败和成功  
一定会给予热情、客观、公正的评定  
是的，我焦急地等待着他们的评定  
朋友，坚定地相信未来吧  
相信不屈不挠的努力  
相信战胜死亡的年轻  
相信未来、热爱生命 ";
set @v_id="995";
set @v_code="383";
set @v_type_id="118";
set @v_author_id="5414";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="这是四点零八分的北京";
set @v_body="这是四点零八分的北京
一片手的海洋翻动
这是四点零八分的北京
一声尖厉的汽笛长鸣
北京车站高大的建筑
突然一阵剧烈地抖动
我吃惊地望着窗外
不知发生了什么事情
我的心骤然一阵疼痛，一定是
妈妈缀扣子的针线穿透了我的心胸
这时，我的心变成了一只风筝
风筝的线绳就在妈妈的手中
线绳绷得太紧了，就要扯断了
我不得不把头探出车厢的窗棂
直到这时，直到这个时候
我才明白发生了什么事情
——一阵阵告别的声浪
就要卷走车站
北京在我的脚下
已经缓缓地移动
我再次向北京挥动手臂
想一把抓住她的衣领
然后对她大声地叫喊：
永远记着我，妈妈啊北京
终于抓住了什么东西
管他是谁的手，不能松
因为这是我的北京
是我的最后的北京";
set @v_id="996";
set @v_code="384";
set @v_type_id="118";
set @v_author_id="5414";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

set @v_title="你应该努力追求幸福";
set @v_body="在嘈杂和匆忙中，平静地前行吧，
也别忘了在寂静中，能找到多好的安宁。

可以的话，尽量不放弃原则而与所有人和睦相处。
细语清晰地说出你的肺腑之言，也聆听别人的说话，
别人的话纵然又枯燥又无知，总会有他们的故事。

避开大声吵闹和好斗的人；他们是扰乱心性的人。
不要跟其他人比较，否则可能变得虚荣自负或忿忿不平，
因为一定有人比你伟大，也一定有人比你渺小。

享受计划，也享受成就。
无论自己的事业有多卑微，维持对它的兴趣；
在一生多变的命运中，它是你真正拥有的东西。

谨慎处理生意，因为这世界充斥着欺诈。
但是，不要因此而看不见人间美德；
很多人为崇高理想而奋斗，生命到处都有英勇的事迹。

做你自己。尤其不要虚情假意。
但也不要把爱视为虚伪；
因为尽管生命有时枯燥乏味、有时令人迷醉，
爱，却如青草般日久常在。

不轻视因年老而获得的阅历，
并得体地舍弃年轻时拥有的东西。

培育心灵上的力量，以面对突然而来的不幸。
但不要杞人忧天以致心神不宁。
众多的恐惧，源自疲乏和孤独。

要既不逾矩，又善待自己。
你是宇宙的孩子，身份不次于树木和星星；
身处这里是你的权利。
不管你是否明白它的奥秘，
毫无疑问宇宙在展现着原本应有的样貌和规律。

因此，不管在你心中上帝是什么模样，和他和睦相处吧。
也不管你怎样劳累和胸怀大志，在生命的烦嚣和困惑中，
要保持心灵上的安宁。

不管经历了多少伪善、苦役、和破碎的梦，
世界依然是美丽的。
要保持轻松开朗。努力保持快乐。";
set @v_id="997";
set @v_code="385";
set @v_type_id="118";
set @v_author_id="5410";
Insert into book(title,body,id,code,type_id,author_id) SELECT @v_title,@v_body,@v_id,@v_code,@v_type_id,@v_author_id from DUAL WHERE NOT EXISTS(SELECT title,author from book WHERE title=@v_title AND author=@v_author)

