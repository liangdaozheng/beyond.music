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
  #首页音乐专辑推荐表 （bm_index_rec）
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

/*******************/
/******数据导入******/
/*******************/

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
(NULL,1,"梦","Deca Joins","就让我在这里腐烂吧,跟着黑暗消失在空气中,亲爱的你还是去找别人吧,把青春用你想要的方式浪费了,开心地笑,放肆地*爱,抽烟喝酒,但是不要忘记今晚,醒来之后,就是新的人生了,不必烦恼只要继续唱着歌,原来是梦,醒来还是梦","img/music/m.jpg","华语","摇滚","工作","开心","80","video/dream.mp3","10000001","6000",0,1),
(NULL,1,"秋城","丢火车","这里是一座繁华的城市,也曾是一个沉睡的摇篮,很多人祈求上天给予他温暖,可到头来还是一样的无奈,大街上有着无数的陌生人,表情麻木的谈论着未来,忙碌的日子 错过了朝霞与晚餐,不知什么时候 又过了一个秋天,我开始有些倦了,不想面对世间的冷眼旁观,静静的等候日落看星辰坠入大海,我开始不再孤单,从此成为了一种习惯,向失去的 错过的 告别,她总说 都要慢慢的习惯,你要经得起这孤舟的考验,如果你已经厌倦生活的纷扰,那就出去看看 河流山川,我开始有些倦了,不想面对世间的冷眼旁观,静静的等候日落,看星辰坠入大海,我开始不再孤单,从此成为了一种习惯,向失去的 错过的 告别,我开始有些忘了,那些注定回首的种种遗憾,九月的天像烟火是否在等待绽开,我开始不再孤单,从此成为了一种习惯,向失去的 错过的 告别","img/music/qc.jpg","华语","摇滚","工作","开心","80","video/qc.mp3","1000000222","8888",0,1),
(NULL,2,"灰姑娘","陈雪凝","快要忘了怎么不受伤,这世界 满是你的光芒,你拿着我爱你的心脏,妄想着 骑士对你投降,在你设计的城堡逃荒,逃不掉 也不能被爱上 太荒唐,这一路荆棘跌跌撞撞,终于迷失了方向 我怎能 这样,独自收场,我也应该 是被疼爱的灰姑娘,可在你的城堡我只感动了善良,是不是王子总看不到灰姑娘的光,我也渐渐被你遗忘,我也应该 是被疼爱的灰姑娘,可你不愿用一生陪我赌一个过往,也会有一个人与我互诉衷肠,丢掉过往的伤,在你设计的城堡逃荒,逃不掉 也不能被爱上 太荒唐,这一路荆棘跌跌撞撞,终于迷失了方向 我怎能 这样,独自收场,我也应该 是被疼爱的灰姑娘,可在你的城堡我只感动了善良,是不是王子总看不到灰姑娘的光,我也渐渐被你遗忘,我也应该 是被疼爱的灰姑娘,可你不愿用一生陪我赌一个过往,也会有一个人与我互诉衷肠,丢掉过往的伤,破碎又怎样 受伤又怎样,我不愿委屈的为你们着想,你光芒万丈 不走近一丈,有天我的骑士会懂我善良,我也应该是被疼爱的灰姑娘,可你不愿用一生陪我赌一个过往,也会有一个人与我互诉衷肠,丢掉过往的伤,也会有一个人与我互诉衷肠,会有吗","img/music/hgn.jpg","华语","摇滚","工作","开心","90","video/hgn.mp3","1333355556","9958",1,1),
(NULL,3,"Girl Friend","朴宰范","널 보기만 해도 느낌이 확확 只看着你 也感觉火辣辣的 가슴이 짜릿해 계속 너와나 胸口麻酥酥的 一直在想像 어딜 놀러 가는 게 상상돼 아니지만 我和你 一起去郊游 虽然只是想像 니가 벌써 내 여친으로 착각돼 已经 错觉你是我的女朋友 니가 한번 웃어주면 감당 안돼 如果你对着我微笑 无法承受 장점은 만점 단점마저 완벽해 优点满分 连缺点也很完美니 생각 하는게 후크송처럼 반복돼 想着你 如同中毒旋律般反复着 나의 사랑의 영화 니가 감독해 ayyy 你导演着我的爱情电影 ayyy just be my girls friend my girl friend 只需要做我的女朋友 我的女朋友 my girl friend my girl 我的女朋友 我的女孩 be my girls friend my girl friend 做我的女朋友 我的女朋友 my girl friend my girl 我的女朋友 我的女孩 나랑 사겨줄래 너랑 행복할래 和我交往吧 想和你幸福起来 just be my girls friend my girl friend 只需要做我的女朋友 我的女朋友 my girl friend my girl friend 我的女朋友 我的女孩","img/music/girl.jpg","韩语","流行","开车","高兴","00","video/girl.mp3","555427","10021",0,0),
(NULL,4,"你看到的我","黄勇/任浩铭","背起了行囊，离开家的那一刻 我知道现实生活，有太多特别的特 假如你看到了我，也不要太过冷漠 我多愁善感，但也热情奔放洒脱 匆忙的世界，来不及问为什么 我知道漂泊的人，心中都有一团火 假如你又看到我，请给我一个拥抱 我偶尔沉默，但也勇敢执着 你看到的我，你看到的我，是哪一种颜色，悲伤或快乐 也许老了一点，眼神变得不再那么清澈 热血依然沸腾着我的脉搏 你看到的我，你看到的我 是哪一种性格，开朗或慢热 你看到的我，你看到的我 是哪一种性格，开朗或慢热 像勇敢的雄鹰，不怕风雨不怕困难挫折 如果要飞就飞出天空海阔，我就是我 我就是我 我就是我 我就是我","img/music/nkddw.jpg","华语","摇滚","工作","开心","90","video/nkddw.mp3","555427","10021",0,0),
(NULL,5,"盗将行","花粥/马雨阳","劫过九重城关 我座下马正酣 看那轻飘飘的衣摆 趁擦肩把裙掀 踏遍三江六岸 借刀光做船帆 任露水浸透了短衫 大盗睥睨四野 枕风宿雪多年 我与虎谋早餐 拎着钓叟的鱼弦 问卧龙几两钱 蜀中大雨连绵 关外横尸遍野 你的笑像一条恶犬 撞乱了我心弦 谈花饮月赋闲 这春宵艳阳天 待到梦醒时分睁眼 铁甲寒意凛冽 夙愿只隔一箭 故乡近似天边 不知何人浅唱弄弦 我彷徨不可前 枕风宿雪多年 我与虎谋早餐 拎着钓叟的鱼弦 问卧龙几两钱 蜀中大雨连绵 关外横尸遍野 你的笑像一条恶犬 撞乱我心弦 烽烟万里如衔 掷群雄下酒宴 谢绝策勋十二转 想为你窃玉簪 入巷间吃汤面 笑看窗边飞雪 取腰间明珠弹山雀 立枇杷于庭前 入巷间吃汤面 笑看窗边飞雪 取腰间明珠弹山雀 立枇杷于庭前","img/music/djx.jpg","华语","摇滚","工作","开心","00","video/djx.mp3","555427","10021",0,0),
(NULL,6,"晚安","颜中人","窗挡住月色 贪恋的交集 在浮语虚词中交映 忙碌的身影 慢慢的长夜 去匆匆地留下感情 惹多情的遐想 却轻易地走散 情意绵绵总与见异思迁为难 总是不能抵抗你信手的晚安 执迷与你忽远忽近烂桥段 迂回一句晚安 多情人却自找难堪 几人份的畅谈 道三两句晚安 惹多情的遐想 却轻易地走散 情意绵绵总与见异思迁为难 总是不能抵抗你信手的晚安 执迷与你忽远忽近烂桥段 迂回一句晚安 多情人却自找难堪 迂回一句晚安 多情的人始终难堪","img/music/wa.jpg","华语","摇滚","工作","开心","00","video/wa.mp3","555427","10021",0,1),
(NULL,7,"Keep On Tryin","Duxiu / Jack & Deniels","You, you've got to, just got to keep on trying你，你必须，只要继续努力And keep doing your best with the hand that you get用你得到的手继续努力And don't give up that fight别放弃战斗No no no you不不不你Can't stop, you can't weep, can't keep on crying不能停止，不能哭泣，不能继续哭泣Just keep doing your best继续努力吧You know life is a test你知道生活是个考验And it's gonna be alright一切都会好起来的Keep on trying继续尝试You, you've got to, just got to keep on trying你，你必须，只要继续努力And keep doing your best with the hand that you get用你得到的手继续努力And don't give up that fight别放弃战斗No no no you不不不你Can't stop, you can't weep, can't keep on crying不能停止，不能哭泣，不能继续哭泣Just keep doing your best继续努力吧You know life is a test你知道生活是个考验And it's gonna be alright一切都会好起来的You can't weep, can't keep on crying你不能哭泣，不能继续哭泣ust keep doing your best继续努力吧You know life is a test你知道生活是个考验And it's gonna be alright一切都会好起来的Keep on trying继续尝试 Keep on trying继续尝试","img/music/keep.jpg","英语","电音","开车","开心","00","video/keep.mp3","555427","10021",0,1),
(NULL,8,"晚安","颜中人","窗挡住月色 贪恋的交集 在浮语虚词中交映 忙碌的身影 慢慢的长夜 去匆匆地留下感情 惹多情的遐想 却轻易地走散 情意绵绵总与见异思迁为难 总是不能抵抗你信手的晚安 执迷与你忽远忽近烂桥段 迂回一句晚安 多情人却自找难堪 几人份的畅谈 道三两句晚安 惹多情的遐想 却轻易地走散 情意绵绵总与见异思迁为难 总是不能抵抗你信手的晚安 执迷与你忽远忽近烂桥段 迂回一句晚安 多情人却自找难堪 迂回一句晚安 多情的人始终难堪","img/music/wa.jpg","华语","摇滚","工作","开心","00","video/wa.mp3","555427","10021",0,1),
(NULL,9,"晚安","颜中人","窗挡住月色 贪恋的交集 在浮语虚词中交映 忙碌的身影 慢慢的长夜 去匆匆地留下感情 惹多情的遐想 却轻易地走散 情意绵绵总与见异思迁为难 总是不能抵抗你信手的晚安 执迷与你忽远忽近烂桥段 迂回一句晚安 多情人却自找难堪 几人份的畅谈 道三两句晚安 惹多情的遐想 却轻易地走散 情意绵绵总与见异思迁为难 总是不能抵抗你信手的晚安 执迷与你忽远忽近烂桥段 迂回一句晚安 多情人却自找难堪 迂回一句晚安 多情的人始终难堪","img/music/wa.jpg","华语","摇滚","工作","开心","00","video/wa.mp3","555427","10021",0,1);
/**首页音乐表（bm_index_hot）**/
INSERT INTO bm_index_hot VALUES
(NULL,"img/music/wa.jpg","晚安","颜中人","video/wa.mp3","555427","mid=7"),
(NULL,"img/music/m.jpg","梦","Deca Joins","video/dream.mp3","10000001","mid=1"),
(NULL,"img/music/qc.jpg","秋城","丢火车","video/qc.mp3","1000000222","mid=2"),
(NULL,"img/music/hgn.jpg","灰姑娘","陈雪凝","video/hgn.mp3","555427","mid=3"),
(NULL,"img/music/girl.jpg","Girl Friend","朴宰范","video/girl.mp3","555427","mid=4"),
(NULL,"img/music/nkddw.jpg","你看到的我","黄勇/任浩铭","video/nkddw.mp3","555427","mid=5"),
(NULL,"img/music/djx.jpg","盗将行","花粥/马雨阳","video/djx.mp3","555427","mid=6");
/**音乐专辑推荐表表（bm_index_rec）**/
INSERT INTO bm_index_rec VALUES
(NULL,"国人的独立摇滚| 脱离商业束缚的音乐圣殿","img/music/grddlyg.jpg","fid=1","video/dream.mp3","8855",0),
(NULL,"华语民谣丨治愈孤独患者的暖心民谣歌单","img/music/hymy.jpg","fid=2","video/hgn.mp3","6685",0),
(NULL,"游戏必备歌单＊激情循环播放","img/music/yxbbgd.jpg","fid=3","video/girl.mp3","22448",1),
(NULL,"抖音歌曲最新2019抖音歌曲大全（持续更新）","img/music/dygqzx2019.jpg","fid=4","video/nkddw.mp3","58554",1),
(NULL,"酷锐女声 | 冉冉升起的独立女嗓","img/music/krns.jpg","fid=5","video/djx.mp3","33478",1),
(NULL,"生活不易，但坚持下来一定很酷","img/music/shby.jpg","fid=6","video/wa.mp3","8888",0),
(NULL,"绝版歌曲，劲爆电音，英文纯音，应有尽有！","img/music/jbgq.jpg","fid=7","video/keep.mp3","5656",0);
/**首页轮播图表（bm_index_carousel）**/
INSERT INTO bm_index_carousel VALUES
(NULL,"秋城","img/music/qc.jpg","video/qc.mp3"),
(NULL,"盗将行","img/music/djx.jpg","video/djx.mp3"),
(NULL,"Girl Friend","img/music/girl.jpg","video/girl.mp3"),
(NULL,"Keep On Tryin","img/music/keep.jpg","video/keep.mp3");
/**用户朋友圈个人表（bm_user_uploading）**/
INSERT INTO bm_user_uploading VALUES
(NULL,1,1,"梦","就让我在这里腐烂吧,跟着黑暗消失在空气中,亲爱的你还是去找别人吧,把青春用你想要的方式浪费了,开心地笑,放肆地*爱,抽烟喝酒,但是不要忘记今晚,醒来之后,就是新的人生了,不必烦恼只要继续唱着歌,原来是梦,醒来还是梦","img/music/m.jpg","video/dream.mp3","摇滚","国人的独立摇滚","脱离商业束缚的音乐圣殿",29,"1560218306810"),
(NULL,2,1,"梦","就让我在这里腐烂吧,跟着黑暗消失在空气中,亲爱的你还是去找别人吧,把青春用你想要的方式浪费了,开心地笑,放肆地*爱,抽烟喝酒,但是不要忘记今晚,醒来之后,就是新的人生了,不必烦恼只要继续唱着歌,原来是梦,醒来还是梦","img/music/m.jpg","video/dream.mp3","摇滚","摇滚推荐","华语摇滚推荐",58,"1560218607298"),
(NULL,3,1,"梦","就让我在这里腐烂吧,跟着黑暗消失在空气中,亲爱的你还是去找别人吧,把青春用你想要的方式浪费了,开心地笑,放肆地*爱,抽烟喝酒,但是不要忘记今晚,醒来之后,就是新的人生了,不必烦恼只要继续唱着歌,原来是梦,醒来还是梦","img/music/m.jpg","video/dream.mp3","摇滚","好听的歌","求点赞",63,"1560208602114"),
(NULL,4,6,"盗将行","劫过九重城关 我座下马正酣 看那轻飘飘的衣摆 趁擦肩把裙掀 踏遍三江六岸 借刀光做船帆 任露水浸透了短衫 大盗睥睨四野 枕风宿雪多年 我与虎谋早餐 拎着钓叟的鱼弦 问卧龙几两钱 蜀中大雨连绵 关外横尸遍野 你的笑像一条恶犬 撞乱了我心弦 谈花饮月赋闲 这春宵艳阳天 待到梦醒时分睁眼 铁甲寒意凛冽 夙愿只隔一箭 故乡近似天边 不知何人浅唱弄弦 我彷徨不可前 枕风宿雪多年 我与虎谋早餐 拎着钓叟的鱼弦 问卧龙几两钱 蜀中大雨连绵 关外横尸遍野 你的笑像一条恶犬 撞乱我心弦 烽烟万里如衔 掷群雄下酒宴 谢绝策勋十二转 想为你窃玉簪 入巷间吃汤面 笑看窗边飞雪 取腰间明珠弹山雀 立枇杷于庭前 入巷间吃汤面 笑看窗边飞雪 取腰间明珠弹山雀 立枇杷于庭前","img/music/djx.jpg","video/djx.mp3","摇滚","酷锐女声","冉冉升起的独立女嗓",88,"1560208652114"),
(NULL,5,6,"盗将行","劫过九重城关 我座下马正酣 看那轻飘飘的衣摆 趁擦肩把裙掀 踏遍三江六岸 借刀光做船帆 任露水浸透了短衫 大盗睥睨四野 枕风宿雪多年 我与虎谋早餐 拎着钓叟的鱼弦 问卧龙几两钱 蜀中大雨连绵 关外横尸遍野 你的笑像一条恶犬 撞乱了我心弦 谈花饮月赋闲 这春宵艳阳天 待到梦醒时分睁眼 铁甲寒意凛冽 夙愿只隔一箭 故乡近似天边 不知何人浅唱弄弦 我彷徨不可前 枕风宿雪多年 我与虎谋早餐 拎着钓叟的鱼弦 问卧龙几两钱 蜀中大雨连绵 关外横尸遍野 你的笑像一条恶犬 撞乱我心弦 烽烟万里如衔 掷群雄下酒宴 谢绝策勋十二转 想为你窃玉簪 入巷间吃汤面 笑看窗边飞雪 取腰间明珠弹山雀 立枇杷于庭前 入巷间吃汤面 笑看窗边飞雪 取腰间明珠弹山雀 立枇杷于庭前","img/music/djx.jpg","video/djx.mp3","摇滚","热歌","冉冉升起的独立女嗓",80,"1560206152114");
/**用户朋友圈个人表（bm_user_party）**/
INSERT INTO bm_user_party VALUES
(NULL,1,2,"1560206152114",2),
(NULL,1,3,"1560205152114",3),
(NULL,2,1,"1560206102114",1),
(NULL,2,3,"1560206150114",3);










