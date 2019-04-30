//app_server_00/app.js
//0:下载mysql express模块
//1:引入二个模块 mysql express
const mysql = require("mysql");
const express = require("express");
//2.1引入跨域模块
const cors = require("cors")
//2.2配置允许列表  配置在服务器后
//2:创建连接池 很大提高效率方法
var pool = mysql.createPool({
    host:"127.0.0.1",
    user:"root",
    password:"",
    database:"sup"
});
//3:创建express对象
var server = express();
server.use(cors({
  origin:["http://127.0.0.1:6666","http://localhost:6666","http://127.0.0.1:3033","http://localhost:3033"],
  credentials:true
}))
//4:为express对象绑定监听端口 3000
server.listen(5555);
server.use(express.static("public"))

//轮播图
server.get("/bnner",(req,res)=>{
  pool.query("SELECT * FROM bnner",(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,data:result});
    }else{
      res.send({code:-1,data:[]})
    }
  })
})


