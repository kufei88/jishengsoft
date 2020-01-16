<template>
  <div id="app">
    <el-row>
      <el-container style="position:fixed; z-index:100;width:100%;">
        <el-header style="text-align: center; font-size: 12px;padding:0;margin-top:-10px">
          <el-menu
            :default-active="onRoutes"
            class="el-menu-demo"
            mode="horizontal"
            style="border-bottom: solid 0px;position:fixed;width:1400px;padding-top:10px"
            @select="handleSelect"
            active-text-color="#2d8cf0"
            router
          >
            <!-- <el-menu-item unvisabled style="border-bottom: solid 0px"></el-menu-item> -->

            <el-menu-item style="border-bottom: solid 0px;margin-left:-1%">
              <div class="layout-logo">
                <router-link to="/home">
                  <img src="./assets/济胜logo.png" width="180px" height="60px">
                </router-link>
              </div>
            </el-menu-item>
            <!-- <el-menu-item unvisabled style="border-bottom: solid 0px"></el-menu-item><el-menu-item unvisabled style="border-bottom: solid 0px"></el-menu-item> -->

            <el-menu-item index="home" style="font-size:18px;margin-left:10px">公司首页</el-menu-item>
            <el-submenu index="2">
              <template slot="title">解决方案</template>
              <el-menu-item index="solution_1">五金锁具生产解决方案</el-menu-item>
              <el-menu-item index="solution_2">家装建材行业解决方案</el-menu-item>
              <el-menu-item index="solution_3">医疗器械行业解决方案</el-menu-item>
              <el-submenu index="2-4">
                <template slot="title">选项4</template>
                <el-menu-item index="2-4-1">选项1</el-menu-item>
                <el-menu-item index="2-4-2">选项2</el-menu-item>
                <el-menu-item index="2-4-3">选项3</el-menu-item>
              </el-submenu>
            </el-submenu>
            <el-menu-item index="made" style="font-size:18px">智能制造</el-menu-item>
            <!-- <el-menu-item index="4">管理咨询</el-menu-item> -->
            <!-- <el-menu-item index="5">案例展示</el-menu-item> -->

            <el-menu-item index>
              <a
                href="http://www.jishengsoft.com/register/agentLogin.html#/login"
                style="display:block;height:60px;font-size:18px"
                target="_blank"
              >伙伴入口</a>
            </el-menu-item>
            <el-menu-item index>
              <a
                href="http://www.jishengsoft.com/bbs/index.asp"
                style="display:block;height:60px;font-size:18px"
                target="_blank"
              >济胜社区</a>
            </el-menu-item>

            <el-menu-item index>
              <a
                href="http://www.jishengsoft.com/oldIndex.asp"
                style="display:block;height:60px;font-size:18px"
                target="_blank"
              >老版网站</a>
            </el-menu-item>
            <el-submenu index="3">
              <template slot="title" style="font-size:18px">了解济胜</template>
              <el-menu-item index="8">人才规划</el-menu-item>
              <el-menu-item index="about">关于我们</el-menu-item>
            </el-submenu>
            <!-- <el-menu-item unvisabled style="border-bottom: solid 0px"></el-menu-item> -->
            <!--
            <AutoComplete
              v-model="keywords"
              icon="ios-search"
              placeholder="按下回车搜索..."
              style="width:300px;margin-top:1.2%;margin-left:-5%;"
              @keyup.enter.native="startSearch(keywords)"
              @on-search="startSearch(keywords)"
            >
              <div class="demo-auto-complete-item" v-for="(item,index) in data4" :key="index">
                <div class="demo-auto-complete-group">
                  <span>{{ item.title }}</span>
                  <a href="https://www.baidu.com/" target="_blank">更多</a>
                </div>
                <Option v-for="option in item.children" :value="option.title" :key="option.title">
                  <span
                    class="demo-auto-complete-title"
                    style="margin-left:-20%;"
                  >{{ option.title }}</span>
                  <span class="demo-auto-complete-count">{{ option.count }} 人关注</span>
                </Option>
              </div>
              <a
                href="https://www.google.com/search?q=iView"
                target="_blank"
                class="demo-auto-complete-more"
                style="color: #409eff;"
              >查看所有结果</a>
            </AutoComplete>-->
          </el-menu>
        </el-header>
      </el-container>
    </el-row>
    <br>
    <br>
    <br>
    <br>

    <div class="cndns-right">
      <div class="cndns-right-meau meau-car">
        <!-- <a href="#" class="cndns-right-btn">
            <span class="demo-icon">&#xe900;</span>
            <sup>0</sup>
        </a>-->
      </div>
      <div class="cndns-right-meau meau-sev">
        <a href="javascript:" class="cndns-right-btn">
          <span class="demo-icon">&#xe901;</span>
          <p class="top-p">
            在线
            <br>客服
          </p>
        </a>
        <div class="cndns-right-box">
          <div class="box-border">
            <div class="sev-t">
              <span class="demo-icon">&#xe901;</span>
              <p>
                在线客服
                <i>服务时间：8:30-17:30</i>
              </p>
              <div class="clear"></div>
            </div>
            <div class="sev-b">
              <h4>选择下列产品马上在线沟通：</h4>
              <ul class="zixunUl">
                <li>
                  <a href="javascript:void(0);">域名/主机</a>
                </li>
                <li>
                  <a href="javascript:void(0);">建站/网店</a>
                </li>
                <li>
                  <a href="javascript:void(0);">企业邮局</a>
                </li>
                <li>
                  <a href="javascript:void(0);">代理咨询</a>
                </li>
                <li>
                  <a href="javascript:void(0);">网站推广</a>
                </li>
                <li>
                  <a href="javascript:void(0);">橙云主机</a>
                </li>
                <li>
                  <a href="javascript:void(0);">域名交易</a>
                </li>
                <li>
                  <a href="javascript:void(0);">租用托管</a>
                </li>
                <li>
                  <a href="javascript:void(0);">其他产品</a>
                </li>
                <div class="clear"></div>
              </ul>
            </div>
            <span class="arrow-right"></span>
          </div>
        </div>
      </div>
      <div class="cndns-right-meau meau-code">
        <a href="javascript:" class="cndns-right-btn">
          <span class="demo-icon">&#xe903;</span>
          <p class="top-p">
            关注
            <br>微信
          </p>
        </a>
        <div class="cndns-right-box">
          <div class="box-border">
            <div class="sev-t">
              <img src="./assets/backtop/images/公众号二维码.jpg">
              <i>关注官方微信</i>
            </div>
            <span class="arrow-right"></span>
          </div>
        </div>
      </div>
      <div class="cndns-right-meau meau-contact">
        <a href="javascript:" class="cndns-right-btn">
          <span class="demo-icon">&#xe902;</span>
          <p class="top-p">
            客服
            <br>热线
          </p>
        </a>
        <div class="cndns-right-box">
          <div class="box-border">
            <div class="sev-t">
              <span class="demo-icon">&#xe902;</span>
              <p style="margin-left:5%">
                0579-83181608
                <br>
                <i class="top-i">7*24小时客服服务热线</i>
              </p>
              <div class="clear"></div>
            </div>
            <span class="arrow-right"></span>
          </div>
        </div>
      </div>

      <div class="cndns-right-meau meau-top" id="top-back">
        <a href="javascript:" class="cndns-right-btn" @click="topBack">
          <span class="demo-icon">&#xe904;</span>
          <span>顶部</span>
        </a>
      </div>
    </div>
    <router-view></router-view>

    <hr style="height:50px;border:none;border-top:1px solid #DCDFE6;">
    <el-row class="footer-row" style="background:#0079e1">
      <el-col :span="6">
        <el-card shadow="hover" class="common-footer">
          <div slot="header" class="clearfix">
            <span class="mid">&nbsp;我想了解</span>
          </div>
          <div class="footer-link">
            <router-link to>济胜商务管理系统</router-link>
          </div>
          <div class="footer-link">
            <router-link to>济胜ERP系统</router-link>
          </div>
          <div class="footer-link">
            <router-link to>移动APP应用</router-link>
          </div>
          <div class="footer-link">
            <router-link to>微商城订货系统</router-link>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover" class="common-footer">
          <div slot="header" class="clearfix">
            <span class="mid">我是客户</span>
          </div>
          <div class="footer-link">
            <router-link to>济胜商务管理系统</router-link>
          </div>
          <div class="footer-link">
            <router-link to>济胜ERP系统</router-link>
          </div>
          <div class="footer-link">
            <router-link to>移动APP应用</router-link>
          </div>
          <div class="footer-link">
            <router-link to>微商城订货系统</router-link>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover" class="common-footer">
          <div slot="header" class="clearfix">
            <span class="mid">我是伙伴</span>
          </div>
          <div class="footer-link">
            <router-link to>常见问题</router-link>
          </div>
          <div class="footer-link">
            <router-link to="download">资料与软件下载</router-link>
          </div>
          <div class="footer-link">
            <router-link to>需求提交</router-link>
          </div>
          <div class="footer-link">
            <router-link to>在线申请</router-link>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card shadow="hover" class="common-footer">
          <img src="./source/images/qrcode.jpg" style="width:100px">
          <br>&nbsp;
          <span class="mid">预约上门服务</span>
          <h1 style="color:#fff;">0579-83181608</h1>
          <p class="mid">周一至周六 8：30 — 17：30</p>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import "babel-polyfill";
import $ from "jquery";
//置顶图标显示
$("#top-back").hide();
$(window).scroll(function() {
  if ($(this).scrollTop() > 350) {
    $("#top-back").fadeIn();
  } else {
    $("#top-back").fadeOut();
  }
});
//置顶事件
function topBack() {
  $("body,html").animate({ scrollTop: 0 }, 300);
}
export default {
  data: () => ({
    show3: true,
    show4: true,
    keywords: "",
    data4: [
      {
        title: "话题",
        children: [
          {
            title: "谈关于行业软件的一点看法",
            count: 1390
          },
          {
            title: "实施中小企业管理软件的一点体会",
            count: 2024
          }
        ]
      },
      {
        title: "问题",
        children: [
          {
            title: "选购软件十问",
            count: 1575
          },
          {
            title: "我们应如何选购管理软件",
            count: 1673
          }
        ]
      },
      {
        title: "文章",
        children: [
          {
            title: "济胜软件版本与实施介绍",
            count: 1365
          }
        ]
      }
    ]
  }),
  computed: {
    onRoutes() {
      return this.$route.path.replace("/", "");
    }
  },
  methods: {
    startSearch(keywords) {
      // alert("传入" + keywords);
      this.$router.push("/search?keywords=" + keywords);
      // this.$notify({
      //   title: "It works!",
      //   type: "success",
      //   message:
      //     keywords + "We've laid the ground work for you. It's time for you to build something epic!",
      //   duration: 5000
      // });
    },
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
    topBack() {
      $("body,html").animate({ scrollTop: 0 }, 300);
    }
  }
};
</script>

<style>
.demo-auto-complete-item {
  padding: 4px 0;
  border-bottom: 1px solid #f6f6f6;
}
.demo-auto-complete-group {
  font-size: 12px;
  padding: 4px 6px;
  color: #409eff;
}
.demo-auto-complete-group span {
  color: #666;
  font-weight: bold;
  float: left;
}
.demo-auto-complete-group a {
  float: right;
  color: #409eff;
}
.demo-auto-complete-count {
  float: right;
  color: #999;
}
.demo-auto-complete-more {
  display: block;
  margin: 0 auto;
  padding: 4px;
  text-align: center;
  font-size: 12px;
}
/* #app {
  font-family: Helvetica, sans-serif;
  text-align: center;
}
.el-breadcrumb__item{
  float:none;
} */
.layout-logo {
  border-radius: 3px;
  float: left;
  position: relative;
  left: 10%;
  margin-top: 5px;
  z-index: 100;
}
/* .el-menu {
  margin-left: -1.5%;
  width:120%;
  margin-top:-1%
} */
/* .el-card {
  width: 80%;
  margin-left: 10%;
}
.el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }

  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }

  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }

  .el-tabs__item {
    height: auto;
  }

  .bg-purple {
    background: #fff;
  }

  .grid-content {
    border-radius: 4px;
    min-height: 120px;
  } */
* {
  padding: 0;
  /* list-style-type: none; */
}
/* a,img{border:0;text-decoration:none;} */
/* #body{font:12px/180% Arial, Helvetica, sans-serif ,"新宋体";}
p{margin:0px;padding:0px;line-height:20px;}
i{margin:0px;padding:0px;font-style:normal;} */
.top-p {
  margin: 0px;
  padding: 0px;
  line-height: 20px;
}
.zixunUl {
  margin: 0px;
  padding: 0px;
  list-style: none;
}
ul li {
  margin: 0px;
  padding: 0px;
  /* list-style: none; */
}
a {
  color: #333333;
  text-decoration: none;
}
#a:hover {
  color: #ff5a00;
  text-decoration: none;
}
.clear {
  clear: both;
  font-size: 0px;
  line-height: 0;
  height: 0;
}

@font-face {
  font-family: "icomoon";
  src: url("./assets/backtop/fonts/icomoon.eot?qradjf");
  src: url("./assets/backtop/fonts/icomoon.eot?qradjf#iefix")
      format("embedded-opentype"),
    url("./assets/backtop/fonts/icomoon.ttf?qradjf") format("truetype"),
    url("./assets/backtop/fonts/icomoon.woff?qradjf") format("woff"),
    url("./assets/backtop/fonts/icomoon.svg?qradjf#icomoon") format("svg");
  font-weight: normal;
  font-style: normal;
}
.demo-icon {
  font-family: "icomoon";
  font-style: normal;
  font-weight: normal;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  text-align: center;
  font-variant: normal;
  text-transform: none;
  font-size: 24px;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  line-height: 24px;
  color: #999;
}

/*new right*/
.cndns-right {
  position: fixed;
  right: 1px;
  top: 70%;
  margin-top: -100px;
  z-index: 100;
}
.cndns-right-meau {
  position: relative;
}
.cndns-right-btn {
  border: 0;
  text-decoration: none;
  width: 48px;
  height: 48px;
  border: 1px solid #ddd;
  text-align: center;
  display: block;
  margin-bottom: 6px;
  position: relative;
  background-color: #fff;
}
.cndns-right-btn span {
  color: #848484;
  font-size: 26px;
  line-height: 48px;
}
.cndns-right-btn sup {
  display: block;
  min-width: 24px;
  height: 24px;
  text-align: center;
  line-height: 24px;
  color: #fff;
  border-radius: 50%;
  background-color: #ff6800;
  position: absolute;
  left: -12px;
  top: -12px;
}
.cndns-right-btn p {
  color: #ff6800;
  font-size: 14px;
  line-height: 18px;
  padding-top: 5px;
  display: none;
}
.cndns-right-meau:hover .cndns-right-btn span {
  display: none;
}
.cndns-right-meau:hover .cndns-right-btn p {
  display: block;
}
.meau-car .cndns-right-btn {
  border-color: #ff6800;
  margin-bottom: 20px;
}
.meau-car.cndns-right-meau:hover .cndns-right-btn {
  background-color: #ff6800;
}
.meau-car.cndns-right-meau:hover .cndns-right-btn span {
  color: #fff;
  display: block;
}
.meau-car .cndns-right-btn span {
  color: #ff6800;
}
.meau-sev .cndns-right-btn {
  border-color: #ff6800;
  background: url(./assets/backtop/images/zxkf.gif) no-repeat #ff6800 center;
}
.meau-sev .cndns-right-btn p {
  color: #fff;
}
.meau-sev .cndns-right-btn span {
  color: #fff;
}
.meau-top .cndns-right-btn span {
  font-size: 12px;
  line-height: 12px;
  padding-top: 10px;
  display: block;
}
.meau-top .cndns-right-btn i {
  display: block;
  color: #999;
}
.meau-top.cndns-right-meau:hover .cndns-right-btn {
  background-color: #ff6800;
}
.meau-top.cndns-right-meau:hover .cndns-right-btn span {
  display: block;
  color: #fff;
}
.meau-top.cndns-right-meau:hover .cndns-right-btn i {
  color: #fff;
}
.cndns-right-box {
  position: absolute;
  top: -15px;
  right: 48px;
  padding-right: 25px;
  display: none;
}
.cndns-right-box .box-border {
  border: 1px solid #ccc;
  border-top: 4px solid #ff6800;
  padding: 20px;
  background-color: #fff;
  -webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 3px 8px rgba(0, 0, 0, 0.15);
  box-shadow: 0 3px 8px rgba(0, 0, 0, 0.15);
  position: relative;
}
.cndns-right-box .box-border .arrow-right {
  display: block;
  width: 13px;
  height: 16px;
  background: url(./assets/backtop/images/arrow.png) no-repeat;
  position: absolute;
  right: -13px;
  top: 26px;
}
.cndns-right-box .box-border .sev-t span {
  font-size: 42px;
  float: left;
  display: block;
  line-height: 56px;
  margin-right: 20px;
  color: #d3d3d3;
  margin: 0;
}
.cndns-right-box .box-border .sev-t p {
  float: left;
  color: #ff6800;
  font-size: 24px;
  line-height: 28px;
  margin: 0;
}
.cndns-right-box .box-border .sev-t p i {
  display: block;
  font-size: 14px;
  color: #aaa;
  margin: 0;
}
.cndns-right-box .box-border .sev-b {
  padding-top: 15px;
  margin-top: 15px;
  border-top: 1px solid #e4e4e4;
}
.cndns-right-box .box-border .sev-b h4 {
  color: #666;
  font-size: 14px;
  font-weight: normal;
  padding-bottom: 15px;
}
.cndns-right-box .box-border .sev-b li {
  float: left;
  width: 33.33333%;
}
.cndns-right-box .box-border .sev-b li a {
  display: inline-block;
  color: #999;
  font-size: 13px;
  padding-left: 43px;
  background: url(./assets/backtop/images/qq.gif) no-repeat left 3px;
  line-height: 36px;
}
.cndns-right-box .box-border .sev-b li a:hover {
  color: #ff6800;
}
.meau-sev .cndns-right-box .box-border {
  width: 430px;
}
.meau-contact .cndns-right-box .box-border {
  width: 270px;
}
.cndns-right-meau:hover .cndns-right-box {
  display: block;
}
.meau-code .cndns-right-box {
  top: inherit;
  bottom: -35px;
}
.meau-code .cndns-right-box .box-border {
  width: 200px;
  text-align: center;
  border-top: 1px solid #ccc;
}
.meau-code .cndns-right-box .box-border i {
  display: block;
  color: #f66e06;
  font-size: 16px;
  line-height: 16px;
}
.meau-code .cndns-right-box .box-border .arrow-right {
  top: inherit;
  bottom: 50px;
}
.meau-sev .cndns-right-btn .demo-icon {
  display: none;
}
.meau-sev:hover .cndns-right-btn {
  background: #ff6800;
}
.meau-zs .cndns-right-btn {
  background-color: #ff6800;
  color: #fff;
  margin-top: 80px;
  border-color: #ff6800;
}
.meau-zs .cndns-right-btn span {
  color: #fff;
}
.meau-zs .cndns-right-btn p {
  color: #fff;
}
.el-submenu__title {
  font-size: 18px;
}
.common-footer {
  background: #0079e1;
  height: 270px;
  color: #fff;
  border: none;
}
.footer-link {
  text-align: left;
  margin-left: 30%;
  height: 30px;
}
.footer-link a {
  color: #fff;
  font-size: 14px;
}
.footer-link a:hover {
  color: #333333;
}
.common-footer .el-card__header {
  border: none;
  padding-bottom: 0;
}
.footer-row .el-card {
  margin-left: 0;
  width: 100%;
  border-right: 1px solid #fff;
  height: 270px;
  border-radius: 0;
  margin-top: 30px;
}
.footer-row {
  height: 330px;
}
</style>
