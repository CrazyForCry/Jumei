const mysql=require("mysql");
const {mysql_conf}=require("../conf/db");
//创建对象
const con=mysql.createConnection(mysql_conf);
con.connect();
function execSql(sql) {
    const promise=new Promise((resolve,reject)=>{
        con.query(sql,(err,result)=>{
            if(err){
                reject(err);
                return;
            }
            resolve(result);
        })
    })
    return promise;
}
module.exports={execSql}