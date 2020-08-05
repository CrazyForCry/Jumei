const {execSql} = require("../db/mysql")

//显示所有用户
const listUser=()=>{
    let sql = "select * from tab_user";
    return execSql(sql);
}
//根据id显示一个用户
const listOneUser=(userid)=>{
    let sql =  `select * from tab_user where id =${userid}`;
    return execSql(sql)
}
//添加用户
const addUser=(userData)=>{
    let sql = `insert into tab_user values(null,"${userData.username}","${userData.password}","${userData.email}")`;
    return execSql(sql).then(insertData=>{
        console.log("insertData:",insertData);
        return {
            id:insertData.insertId,
        }
    })
}
//添加jm用户
const addJMUser=(userData)=>{
    let sql = `insert into tab_phoneuser values(null,"${userData.phone}","${userData.username}","${userData.password}","${userData.email}")`;
    return execSql(sql).then(insertData=>{
        console.log("insertData:",insertData);
        return {
            id:insertData.insertId,
        }
    })
}
//根据id删除用户
const delUser=(userid)=>{
    let sql=`delete from tab_user where id=${userid}`;
    return execSql(sql);
}
//更新用户
const updUser=(userData)=>{
    let sql = `update tab_user set username="${userData.username}",password="${userData.password}",email="${userData.email}" where id=${userData.id}`;
    return execSql(sql);
}
//登录login
const login=(userData)=>{
    let sql=`select * from tab_user where username="${userData.username}" and password="${userData.password}"`;
    return execSql(sql);
}
//登录loginJM
const loginJM=(userData)=>{
    let sql=`select * from tab_phoneuser where username="${userData.username}" and password="${userData.password}"`;
    return execSql(sql);
}
// 注册register
const register=(username)=>{
    let sql=`select * from tab_user where username="${username}"`;
    return execSql(sql);
}
//注册聚美registerJM
const registerJM=(phone)=>{
    let sql=`select * from tab_phoneuser where phone="${phone}"`;
    return execSql(sql);
}
//忘记密码
const forget=(userData)=>{
    let sql=`select * from tab_user where username="${userData.username}" and email="${userData.email}"`;
    return execSql(sql);
}

//选中多条用户
const delMoreUser=(useridlist)=>{
    console.log("useridlist",useridlist);
    let sql=`delete from tab_user where id in (${useridlist})`;
    return execSql(sql);
}
module.exports={listUser,listOneUser,addUser,delUser,updUser,login,register,forget,registerJM,loginJM,addJMUser,delMoreUser};