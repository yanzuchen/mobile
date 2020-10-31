var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var mysql = require('mysql');

var pool = mysql.createPool({
  //数据库服务器地址
  host: '127.0.0.1',
  //数据库用户名
  user: 'root',
  //数据库用户密码
  password: '',
  //数据库服务器端口号
  port: 3306,
  //数据库名称
  database: 'dhsc',
  //编码方式
  charset: 'utf8',
  //连接限制
  connectionLimit: 15
});

// var indexRouter = require('./routes/index');
// var usersRouter = require('./routes/users');

//创建服务器
var app = express();

//引入body-parser中间件 解决post请求
var bodyparser = require("body-parser");
//将body作为服务器的中间件使用
app.use(bodyparser.urlencoded({
  extended: false
}))

//引入cors模块 解决跨域
var cors = require('cors');
app.use(cors({
  origin: ['http://127.0.0.1:8080', 'http://localhost:8080']
}));

//轮播图
app.get('/carousel',(req,res)=>{
  let sql='SELECT * FROM carousel';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//图标
app.get('/icons',(req,res)=>{
  let sql='SELECT * FROM icons';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//分类第一个的
app.get('/classifya',(req,res)=>{
  let sql='SELECT * FROM classifydetails_a';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//分类第二个的
app.get('/classifyb',(req,res)=>{
  let sql='SELECT * FROM classifydetails_b';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//分类第三个的
app.get('/classifyc',(req,res)=>{
  let sql='SELECT * FROM classifydetails_c';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//分类第四个的
app.get('/classifyd',(req,res)=>{
  let sql='SELECT * FROM classifydetails_d';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//分类第五个的
app.get('/classifye',(req,res)=>{
  let sql='SELECT * FROM classifydetails_e';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//分类第六个的
app.get('/classifyf',(req,res)=>{
  let sql='SELECT * FROM classifydetails_f';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//分类第七个的
app.get('/classifyg',(req,res)=>{
  let sql='SELECT * FROM classifydetails_g';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//分类第八个的
app.get('/classifyh',(req,res)=>{
  let sql='SELECT * FROM classifydetails_h';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//分类第九个的
app.get('/classifyi',(req,res)=>{
  let sql='SELECT * FROM classifydetails_i';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//首页楼层1
app.get('/indexfloora',(req,res)=>{
  let sql='SELECT * FROM indexfloora';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//首页楼层2
app.get('/indexfloorb',(req,res)=>{
  let sql='SELECT * FROM indexfloorb';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//首页楼层3
app.get('/indexfloorc',(req,res)=>{
  let sql='SELECT * FROM indexfloorc';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
//首页轮播
app.get('/indexcs',(req,res)=>{
  let sql='SELECT * FROM indexcs';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})
// 详情
app.get("/details",(req,res)=>{
  let fid=req.query.fid
  let sql='SELECT * FROM details WHERE family_id=?';
  pool.query(sql,[fid],(err,result)=>{
      if(err) throw err;
      res.send({result:result[0]})
  })
})



//注册
app.post('/register', (req, res) => {
  //获取用户提交的用户名等信息
  let phone = req.body.phone;
  let upwd = req.body.upwd;
  let obj = req.body;
  let sql = 'SELECT * FROM reg  WHERE phone = ?'
  pool.query(sql, [phone], (err, result) => {
      if (err) throw err;
      if (result.length !== 0) {
          res.send({ message: '注册失败', code: 0 })
      } else {
          let sql = 'insert into reg set ?'
          pool.query(sql, [obj], (err, result) => {
              if (err) throw err;
              res.send({ message: '注册成功', code: 1 })
          })
      }
  })
})

//手机验证码登录
app.post('/mlogin',(req,res)=>{
  let phone=req.body.phone;
  let upwd=req.body.upwd;
  let sql='SELECT * FROM reg WHERE phone=?';
  pool.query(sql,[phone],(err,result)=>{
      if(err) throw err;
      if(result.length==0){
          res.send({message:'失败',code:0})
      }else{
          res.send({message:'成功',code:1,info:result[0]})
      }
  })
})

//账号密码登录
app.post('/nmlogin',(req,res)=>{
  let phone=req.body.phone;
  let upwd=req.body.upwd;
  let sql='SELECT * FROM reg WHERE phone=? AND upwd=?';
  pool.query(sql,[phone,upwd],(err,result)=>{
      if(err) throw err;
      if(result.length==0){
          res.send({message:'失败',code:0})
      }else{
          res.send({message:'成功',code:1})
      }
  })
})

// 搜索
app.get('/search',(req,res)=>{
  let value=req.query.v;
  let sql='select * from details where search=? ';
  pool.query(sql,[value],(err,result)=>{
      if(err) throw err;
      if(result.length==0){
          res.send({code:0})
      }else{
          res.send({result:result});
      }
  })
})

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// app.use('/', indexRouter);
// app.use('/users', usersRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
