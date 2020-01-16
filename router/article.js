//引入express模块
const express = require("express");
//定义路由级中间件
const router = express.Router();
//引入数据模型模块
const Article = require("../models/article");

// 查询所有信息路由
router.get("/article", (req, res) => {
    Article.find({},{ title:1, createTime:1, _id:0})
    .sort({ createTime: -1 })
    .limit(2)
    .then(articles => {
    // for(var a in articles){
    //     res.json(articles[a]);
    // }
       res.json(articles);
    //   console.log(articles);
    })
    .catch(err => {
      console.log(2);
      res.json(err);
    });
});

module.exports = router;
