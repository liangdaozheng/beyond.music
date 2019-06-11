#创建数据库beyond
SET NAMES UTF8;
DROP DATABASE IF EXISTS beyond;
CREATE DATABASE beyond CHARSET=UTF8;
USE beyond;
#创建表格(10)
  #用户信息表（bm_user）
  CREATE TABLE bm_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    email VARCHAR(64),
    phone VARCHAR(16) NOT NULL UNIQUE,
    avatar VARCHAR(128),
    user_name  VARCHAR(32),
    gender INT ,
    birthday BIGINT,
    post VARCHAR(6),
    fans BIGINT,
    vip BOOLEAN
  );
  #用户音乐列表（bm_user_self）
  CREATE TABLE bm_user_self(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    fid INT ,
    uid INT,
    mid INT,
    islove BOOLEAN,
    share BOOLEAN,
    loaddown BOOLEAN
  );
  #音乐专辑表 （bm_music_family）	
  CREATE TABLE bm_music_family(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(32),
    title VARCHAR(32),
    author VARCHAR(32),
    intro   VARCHAR(258),
    img VARCHAR(128)
  );
  #音乐表 （bm_music)
  CREATE TABLE bm_music(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    fid INT ,
    mname VARCHAR(128),
    author VARCHAR(32),
    word VARCHAR(255),
    img VARCHAR(128),
    lan VARCHAR(20),
    style VARCHAR(20),
    mise VARCHAR(20),
    feel VARCHAR(20),
    theme VARCHAR(20),
    src VARCHAR(128),
    listener BIGINT ,
    loadcount BIGINT,
    isonsale BOOLEAN,
    loaddown BOOLEAN
  );
  #首页轮播图表（bm_index_carousel）
  CREATE TABLE bm_index_carousel(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    mname VARCHAR(128),
    img VARCHAR(128),
    href VARCHAR(128)
  );
  #首页音乐表（bm_index_hot）
  CREATE TABLE bm_index_hot(
    hid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    mname VARCHAR(128),
    author VARCHAR(32),
    src VARCHAR(128),
    listener BIGINT ,
    href VARCHAR(128)
  );
  #首页音乐推荐表 （bm_index_rec）
  CREATE TABLE bm_index_rec(
    rid INT PRIMARY KEY AUTO_INCREMENT,
    mname VARCHAR(128),
    img VARCHAR(128),
    href VARCHAR(128),
    src VARCHAR(128),
    loadcount BIGINT,
    isonsale BOOLEAN
  );
  #用户朋友圈个人表（bm_user_uploading）
  CREATE TABLE bm_user_uploading(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    uid INT,
    mid INT,
    mname VARCHAR(128),
    word VARCHAR(255),
    img VARCHAR(128),
    src VARCHAR(128),
    style VARCHAR(20),
    title VARCHAR(64),
    subtitle VARCHAR(128),
    goods BIGINT,
    showtime BIGINT
  );
  #用户朋友圈表（bm_user_party）
  CREATE TABLE bm_user_party(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    uid INT,
    fuid INT,
    jiontime BIGINT,
    lid INT
  );
  #管理员权限表（bm_admin）
  CREATE TABLE bm_admin(
    aid INT PRIMARY KEY AUTO_INCREMENT,
    aname VARCHAR(32),
    aupwd VARCHAR(32),
    position VARCHAR(32),
    department VARCHAR(32),
    powe TINYINT 
  );
#添加数据
  #用户信息表（bm_user）
  INSERT INTO bm_user VALUES
  (NULL,'liang',md5('123456'),'l_daozheng@163.com','15890595895','img/avatar/default.jpg','道道',1,1550000000000,466700,100,1),
 (NULL,'wen',md5('123456'),'l_daozheng@163.com','15890590000','img/avatar/default.jpg','文文',1,1550000000000,466700,10,0);
  #管理员权限表（bm_admin）
  INSERT INTO bm_admin VALUES
  (NULL,'admin',md5('admin'),'股东','董事',5);







<<<<<<< HEAD
=======
/**用户信息表  (bm_user)**/
 INSERT INTO bm_user VALUES
(NULL,'liang',md5('123456'),'l_daozheng@163.com','15890595895','img/avatar/liang.jpg','道道',1,1550000000000,466700,100,1),
(NULL,'tom',md5('123456'),'tom@163.com','18790595877','img/avatar/tom.jpg','tom',1,1550000000000,111000,210,0),
(NULL,'lili',md5('123456'),'lili@163.com','13990595888','img/avatar/lili.jpg','lili',0,1550000000000,223567,360,1),
(NULL,'toney',md5('123456'),'toney@163.com','17690595899','img/avatar/toney.jpg','toney',1,1550000000000,412128,100,1),
(NULL,'mark',md5('123456'),'mark@163.com','13390595833','img/avatar/mark.jpg','mark',1,1550000000000,558993,88,0),
(NULL,'wen',md5('123456'),'wen@163.com','18690590000','img/avatar/default.jpg','wen',1,1550000000000,667889,101,0);
/**管理员权限表  (bm_admin)**/
 INSERT INTO bm_admin VALUES
(NULL,'admin',md5('admin'),'股东','董事',5);
/**用户音乐列表**/
 INSERT INTO bm_user_self VALUES
(NULL,1,1,1,1,0,0),
(NULL,2,2,2,1,0,0),
(NULL,3,3,3,1,0,1),
(NULL,4,4,4,1,0,1),
(NULL,5,5,5,1,0,1);
/**音乐专辑表 （bm_music_family）**/
INSERT INTO bm_music_family VALUES
(NULL,"国人的独立摇滚| 脱离商业束缚的音乐圣殿","摇滚|华语","mark","南京独立摇滚乐队Schoolgirlbyebye的鼓手更生仔曾阐述过自己坚持独立音乐的原因：“以前人们在劳动时，就会唱歌，这是生活的一部分，我们唱自己的歌，并不是因为世界上有乐迷，而是因为世界上有音乐。","img/music/grddlyg.jpg"),
(NULL,"华语民谣丨治愈孤独患者的暖心民谣歌单","民谣|华语","tomwang","民谣，一听就是一个故事。民谣，唱的人普通，听的人平凡。民谣，喜欢那种感同身受，热爱那些温柔辞藻。用歌曲说话，用歌曲讲故事，因为被赋予旋律，所以才更易打动人心。","img/music/hymy.jpg"),
(NULL,"游戏必备歌单＊激情循环播放","轻音乐|欧美|华语","mark","1、不做无法实现的梦。2、到达胜利之前，无法回头。3、必将百倍奉还。4、颠覆无趣的世道。5、举世无双!6、忍无可忍，无需再忍！7、各取所需而已。8、垫背的，怎么都不嫌多。9、正义，不过是胜利的有一个别称。10、你的脑袋里好像少了些什么。11、还没有输！12、人，总得有个活着的理由。","img/music/yxbbgd.jpg"),
(NULL,"抖音歌曲最新2019抖音歌曲大全（持续更新）","翻唱|华语|欧美","mark","此歌单推荐2018-2019热歌歌曲歌单，欢迎各大佬在歌单留言，我会选择最热门新歌更新歌单。歌单持续更新中... 歌单创建：2018.9.20歌单修改：2019.1.1
歌单更新：2019.6.2歌单制作：小攀哟勿侵、欢迎收藏，关注！封面：96年演员章若楠-饰演顾森湘","img/music/dygqzx2019.jpg"),
(NULL,"酷锐女声 | 冉冉升起的独立女嗓","欧美|另类|电子","tom"," 冉冉上升期 才女之势不可挡 Solo 助阵 合作皆可“盘”,简单盘点 时下欧美音乐圈冉冉升起的独立女声代表,封面｜欧美乐坛新势力零零后女声碧梨 (Billie Eilish),Anne-Marie：1991年 英伦创作型才女 渗透力唱腔,计划2019年7月来华巡演,Alessia Cara：1996年 加拿大新锐女声 音域广 喻有“铁肺”之称 第60届格莱美最佳新人,Billie Elish：2001.12.18 网易云村民早期挖宝代表 BBC年度之声提名 冉冉超新星 2019年首专发行后国内外全面大火","img/music/krns.jpg"),
(NULL,"生活不易，但坚持下来一定很酷","华语|流行|民谣","tom","不必介意当下很苦，不必介意独自一人，不必介意只有好菜没有好酒，只需要往前走，做好每一个当下的选择，好好生活就好。一个人吃炸串，两个人吃火锅，各有各的精彩，重要的是人生这么美妙，来都来了，喜也好，疼也好，至少要痛快，至少你要变成你喜欢的那种人。——柒个先生","img/music/shby.jpg"),
(NULL,"绝版歌曲，劲爆电音，英文纯音，应有尽有！","另类|酒吧|网络歌曲","另类小朋友","来了就收藏下来吧，我会更新很多歌曲让你们不用再去酒吧，KTV，在家里就可以蹦迪！","img/music/jbgq.jpg"),
(NULL,"『1w+热评』欧美万评撩耳男声（单曲循环）","欧美|清新|感动","mark","此单收录：1w+热评欧美男声，经过一个星期的收听，整理，筛选，大多来自于私人FM，都是开口即撩耳，值得单曲循环的好歌曲！歌单创建于2019.3.10，加入的都是1w+的歌曲，当然随着时间的推移有些歌曲肯定会到10w+的，即使到了10w+也不会移出这些歌曲，在此特别标注一下，因为我觉得这是时间的见证！","img/music/1wrp.jpg"),
(NULL,"一秒飙泪 ：我只是泪腺发达啦","欧美|流行|伤感","tom"," 开心就开心，伤心就伤心。明明伤心为什么要装作不伤心？眼泪在打转，为什么不能让它落下来？何必逞强做个酷男/女孩，不如卸下坚强的假面，痛痛哭快地哭一场","img/music/ymbl.jpg");
/**音乐表 （bm_music)**/
INSERT INTO bm_music VALUES
(NULL,1,"梦","Deca Joins","就让我在这里腐烂吧,跟着黑暗消失在空气中,亲爱的你还是去找别人吧,把青春用你想要的方式浪费了,开心地笑,放肆地*爱,抽烟喝酒,但是不要忘记今晚,醒来之后,就是新的人生了,不必烦恼只要继续唱着歌,原来是梦,醒来还是梦","img/music/m.jpg"),

>>>>>>> sql


