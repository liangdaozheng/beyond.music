//使用express构建web服务器
const express = require("express");
const session = require("express-session");
const bodyParser = require("body-parser");
const cors=require("cors");
const multer=require("multer");
//引入路由器模块
var index=require("./routes/index");
var music=require("./routes/music");
var musicmore=require("./routes/musicmore");
var musiclist=require("./routes/musiclist");
var reg=require("./routes/reg");
var signin=require("./routes/signin");
var signout=require("./routes/signout");
var userdel=require("./routes/userdel");
var usermsg=require("./routes/usermsg");
var userupd=require("./routes/userupd");





//创建服务器
var server=express();
//cors方法解决跨域
server.use(cors({
  origin:["http://127.0.0.1:8080","http://localhost:8080"],
  credentials:true
}));
//监听端口8080
server.listen(8080);
//解析post/put的请求的数据（body） get/delete的用query
server.use(bodyParser.urlencoded({
  extended:false
}));
//托管静态资源
server.use(express.static('beyondPublic'))
//添加session功能
server.use(session({
  secret:'beyondmusic',
  //cookie:{maxAge:60*1000*60},//过期时长1h
  resave:false,
  saveUninitialized:true,
}));
//挂载路由器
 //首页路由
server.use("/index",index);
//单曲路由
server.use("/music",music);
//单曲查询更多路由
server.use("/musicmore",musicmore);
//音乐专辑路由
server.use("/musiclist",musiclist);
//用户注册路由
server.use("/reg",reg);
//用户登录路由
server.use("/signin",signin);
//用户退出路由
server.use("/signout",signout);
//用户注销路由
server.use("/userdel",userdel);
//用户信息路由
server.use("/usermsg",usermsg);
//用户修改路由
server.use("/userupd",userupd);


