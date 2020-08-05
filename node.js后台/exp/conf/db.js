const env = process.env.NODE_ENV;

let mysql_conf;
if (env === "dev") {
    mysql_conf ={
        host:"localhost",
        user:"root",
        password:"12345678",
        port:3306,
        database:"web14"
    }
}else{
    mysql_conf ={
        host:"192.168.100.249",
        user:"root",
        password:"12345678",
        port:3306,
        database:"web14"
    }
}
module.exports={mysql_conf}