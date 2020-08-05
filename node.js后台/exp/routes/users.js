var express = require('express');
var router = express.Router();
const {listUser,listOneUser,addUser,delUser,updUser,login,register,forget,registerJM,loginJM,addJMUser,delMoreUser} = require("../models/UserModel");
const  {SuccessMsg,ErrMsg} = require("../msg/BaseMsg")
/* GET users listing. */
router.get('/list',async function(req, res, next) {
  const  userList = await listUser();
  try {
    res.json(new SuccessMsg(userList,"显示所有信息"))
  }catch (err) {
    res.json(new ErrMsg("显示错误！"));
  }
});
router.get('/listone',async function(req, res, next) {
  const  oneUser = await listOneUser(req.query.id);
  try {
    res.json(new SuccessMsg(oneUser[0],"显示一条信息"))
  }catch (err) {
    res.json(new ErrMsg("显示错误！"));
  };
});
router.get('/getname',async function(req, res, next) {
  const  userList = await register(req.query.username);
  try {
    if(userList.length>0){
      res.json(new ErrMsg("用户名已被注册"));
    }else {
      res.json(new SuccessMsg("用户名可以使用"));
    }
  }catch (err) {
    res.json(new ErrMsg("显示错误"));
  }
});
router.get('/getphone',async function(req, res, next) {
  const  phoneList = await registerJM(req.query.phone);
  try {
    console.log(phoneList.length)
    if(phoneList.length>0){
      res.json(new ErrMsg("手机号已被注册"));
      console.log(1)
    }else {
      res.json(new SuccessMsg("手机号可以使用"));
      console.log(2)
    }
  }catch (err) {
    res.json(new ErrMsg("显示错误"));
  }
});
router.post('/adduser',async function(req, res, next) {
  const  info = await addUser(req.body);
  try {
    res.json(new SuccessMsg(info,"添加用户成功"))
  }catch (err) {
    res.json(new ErrMsg("添加用户失败！"));
  }
});
router.post('/addjmuser',async function(req, res, next) {
  const  info = await addJMUser(req.body);
  try {
    res.json(new SuccessMsg(info,"添加用户成功"))
  }catch (err) {
    res.json(new ErrMsg("添加用户失败！"));
  }
});
router.delete('/deluser',async function(req, res, next) {
  const  info = await delUser(req.query.id);
  try {
    res.json(new SuccessMsg(info,"删除用户成功"))
  }catch (err) {
    res.json(new ErrMsg("删除用户失败！"));
  }
});
router.delete('/delmoreuser',async function(req, res, next) {
  const  slist = req.query.sid;
  const info = await  delMoreUser(slist);
  try {
    res.json(new SuccessMsg("删除用户成功"))
  }catch (err) {
    res.json(new ErrMsg("删除用户失败！"));
  }
});
router.put('/upduser',async function(req, res, next) {
  const  info = await updUser(req.body);
  try {
    res.json(new SuccessMsg(info,"更新用户成功"))
  }catch (err) {
    res.json(new ErrMsg("更新用户失败！"));
  }
});
router.post('/login',async function (req,res,next) {
  const info = await login(req.body);
  try {
    if (info.length>0){
      res.json(new SuccessMsg(info[0],"用户登录成功"));
    }else{
      res.json(new ErrMsg("用户登录失败"));
    }
  }catch (err) {
    res.json(new ErrMsg("用户登录失败！"));
  }
});
router.post('/loginjm',async function (req,res,next) {
  const info = await loginJM(req.body);
  try {
    if (info.length>0){
      res.json(new SuccessMsg(info[0],"用户登录成功"));
    }else{
      res.json(new ErrMsg("用户登录失败"));
    }
  }catch (err) {
    res.json(new ErrMsg("用户登录失败！"));
  }
});
router.post('/forget',async function (req,res,next) {
  const info = await forget(req.body);
  try {
    if (info.length>0){
      res.json(new SuccessMsg(info[0],"已找回"));
    }else{
      res.json(new ErrMsg("用户名和密码错误"));
    }
  }catch (err) {
    res.json(new ErrMsg("访问错误！"));
  }
});





module.exports = router;
