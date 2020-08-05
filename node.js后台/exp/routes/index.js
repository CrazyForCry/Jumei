var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  //
  // res.json({
  //   msg:"success"
  // })
  res.json({
    username:"admin",
    password:123
  })
});

module.exports = router;
