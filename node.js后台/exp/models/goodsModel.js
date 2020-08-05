const {execSql} = require("../db/mysql")
//显示所有商品
const listGoods=()=>{
    let sql = "select * from tab_teacher_index";
    return execSql(sql);
}
//显示首页所有信息
const listIndexGoods=()=>{
    let sql = "select * from tab_index";
    return execSql(sql);
}
//显示拼团所有信息
const listCollageGoods=()=>{
    let sql = "select * from tab_collage";
    return execSql(sql);
}
//显示团购所有信息
const listGroupBuyGoods=()=>{
    let sql = "select * from tab_groupbuy";
    return execSql(sql);
}
//显示抢购所有信息
const listRushBuyGoods=()=>{
    let sql = "select * from tab_rushbuy";
    return execSql(sql);
}
//显示精选活动所有信息
const listHotActivitiesGoods=()=>{
    let sql = "select * from tab_hotactivities";
    return execSql(sql);
}
//显示名品特卖所有信息
const listFamousBrandGoods=()=>{
    let sql = "select * from tab_famousbrand";
    return execSql(sql);
}
//显示详情信息
const listGroupBuyDetailsGoods=(detailId)=>{
    let sql = `select * from tab_groupbuydetails where id=${detailId}`;
    return execSql(sql);
}
module.exports={listGoods,listIndexGoods,listCollageGoods,listGroupBuyGoods,listRushBuyGoods,listHotActivitiesGoods,listFamousBrandGoods,listGroupBuyDetailsGoods};