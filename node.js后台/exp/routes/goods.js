var express = require('express');
var router = express.Router();
const {listGoods,listIndexGoods,listCollageGoods,listGroupBuyGoods,listRushBuyGoods,listHotActivitiesGoods,listFamousBrandGoods,listGroupBuyDetailsGoods} = require("../models/goodsModel");
const  {SuccessMsg,ErrMsg} = require("../msg/BaseMsg");
/* GET home page. */
router.get('/list',async function(req, res, next) {

        const  goodsList = await listGoods(req.body);
        try {
            res.json(new SuccessMsg(goodsList,"显示所有信息"))
        }catch (err) {
            res.json(new ErrMsg("显示错误！"));
        };
});
//显示首页所有信息
router.get('/listIndex',async function(req, res, next) {

    const  goodsList = await listIndexGoods(req.body);
    try {
        res.json(new SuccessMsg(goodsList,"显示所有信息"))
    }catch (err) {
        res.json(new ErrMsg("显示错误！"));
    };
});
//显示拼团所有信息
router.get('/listCollage',async function(req, res, next) {

    const  goodsList = await listCollageGoods(req.body);
    try {
        res.json(new SuccessMsg(goodsList,"显示所有信息"))
    }catch (err) {
        res.json(new ErrMsg("显示错误！"));
    };
});
//显示团购所有信息
router.get('/listGroupBuy',async function(req, res, next) {

    const  goodsList = await listGroupBuyGoods(req.body);
    try {
        res.json(new SuccessMsg(goodsList,"显示所有信息"))
    }catch (err) {
        res.json(new ErrMsg("显示错误！"));
    };
});
//显示抢购所有信息
router.get('/listRushBuy',async function(req, res, next) {

    const  goodsList = await listRushBuyGoods(req.body);
    try {
        res.json(new SuccessMsg(goodsList,"显示所有信息"))
    }catch (err) {
        res.json(new ErrMsg("显示错误！"));
    };
});
//显示精选活动所有信息
router.get('/listHotActivities',async function(req, res, next) {

    const  goodsList = await listHotActivitiesGoods(req.body);
    try {
        res.json(new SuccessMsg(goodsList,"显示所有信息"))
    }catch (err) {
        res.json(new ErrMsg("显示错误！"));
    };
});
//显示名品特卖所有信息
router.get('/listFamousBrand',async function(req, res, next) {

    const  goodsList = await listFamousBrandGoods(req.body);
    try {
        res.json(new SuccessMsg(goodsList,"显示所有信息"))
    }catch (err) {
        res.json(new ErrMsg("显示错误！"));
    };
});
//显示详情所有信息
router.get('/listOneGroupBuyDetails',async function(req, res, next) {

    const  oneGoods = await listGroupBuyDetailsGoods(req.query.id);
    try {
        res.json(new SuccessMsg(oneGoods[0],"显示所有信息"))
    }catch (err) {
        res.json(new ErrMsg("显示错误！"));
    };
});
module.exports = router;
