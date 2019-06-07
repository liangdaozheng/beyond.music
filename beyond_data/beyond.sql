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









