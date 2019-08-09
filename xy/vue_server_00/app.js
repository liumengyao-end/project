//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
//2:配置第三方模块
 //2.1:配置连接池
 var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   database:"xy",
   connectionLimit:15
 })
 //2.2:跨域
 var server = express();
 server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
 }))
 //2.3:session
 server.use(session({
   secret:"128位字符串",
   resave:true,
   saveUninitialized:true
 }))
 server.use(express.static("public"))

 server.listen(3000);
 
 //查询页面中添加 历史记录
server.get("/lookup",(req,res)=>{
  //1:参数
  //var uid=req.session.uid;
  var hname = req.query.hname;
  //1.1:正则表达式验证用户名或密码
  //2:sql
var sql = " INSERT INTO history VALUES(null,?) ";

  //3:json
  pool.query(sql,[hname],(err,result)=>{
      if(err)throw err;
      if(result.length>0){
         res.send({code:1,msg:"插入成功"});
      }
  })
})

//查找history数据并加载到页面中 
server.get("/addhistory",(req,res)=>{
  //1:参数
  //var uid=req.session.uid;
  //var hname = req.query.hname;
  //1.1:正则表达式验证用户名或密码
  //2:sql
var sql = "SELECT * from history";
  //3:json
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      if(result.length>0){
         res.send({code:1,data:result});
      }
  })
});

//3:完成第一个功能用户登录
server.get("/login",(req,res)=>{
  //1:参数
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  //1.1:正则表达式验证用户名或密码
  //2:sql
var sql = "SELECT lid FROM ";
sql +=" user_login WHERE uphone = ?";
sql +=" AND upwd = md5(?)";
  //3:json
  pool.query(sql,[uname,upwd],(err,result)=>{
      if(err)throw err;
      if(result.length==0){
         res.send({code:-1,msg:"用户名或密码有误"});
      }else{
         //将当前用户的uid保存在session
         req.session .uid=result[0].id
         res.send({code:1,msg:"登录成功"});
      }
  })
})

//删除历史记录
server.get("/del",(req,res)=>{
  var sql = "DELETE FROM history";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    console.log(result);
    if(result.affectedRows>0){
      res.send({code:1,data:result});
    }
  })
})
//整租租房列表页面
server.get("/rent",(req,res)=>{
  var rent=req.query.rent;
  var sql="SELECT * FROM "+rent;
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,data:result})
    }
  })
})
//tarbar消息
server.get("/msg",(req,res)=>{
  var uid=req.session.uid;
  if(!uid){
    res.send({code:1,msg:"请登录"})
  }
})
//tarbar我的判断是否登录
server.get("/mypage",(req,res)=>{
  var uid=req.session.uid;
  var user=req.session.user;
  //console.log(user)
  //console.log(req.session.uid)
  if(uid>0){
    res.send({code:1,data:uid,user:user})
  }else{
    res.send({code:0})
  }
})
//合租list页面
server.get("/rent_share",(req,res)=>{
  var local=req.query.local;
  //console.log(local)
  var sql = "SELECT * FROM rent_sharing WHERE location LIKE'%'"+local;
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,data:result})
      //console.log(result)
    }
  })
})

//通过关注向关注购物车添加数据
server.get("/insertCart",(req,res)=>{
  var details=req.query;
  //console.log(details);
  var sql="INSERT INTO cart VALUES(null,?,?,?,?,?,?,?,?)"
  pool.query(sql,[details.fid,details.img_url0,details.location,details.village,details.price,details.housetype,details.area,details.orient],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      //console.log(result)
      res.send({code:1,data:result})
    }
  })
})
//取消关注则删除购物侧中的数据
server.get("/gdx",(req,res)=>{
  var fid=req.query.fid
  console.log(fid)
  var sql="DELETE FROM cart WHERE fid=?"
  pool.query(sql,[fid],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,data:result})
    }
  })
})

//附近地图模块查找数据库
server.get("/fujin",(req,res)=>{
  var sql = "SELECT * FROM whole_rent1";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    var obj= {code:1,msg:"查询成功",data:result}
    obj.data=result;
    res.send(obj);
  })
})
//park模块
server.get("/park",(req,res)=>{
  var sql = "SELECT * FROM park";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    var obj= {code:1,msg:"查询成功",data:result}
    obj.data=result;
    res.send(obj);
  })
})
//park01模块
server.get("/park01",(req,res)=>{
  var sql="SELECT * FROM park WHERE pid=1";
  pool.query(sql,(err,result)=>{
   if(err)throw err;
   if(result.length>0){
     res.send({code:1,data:result});
   }
  })
}) 
