<template>
  <div id="app">
  <!-- <el-row>
  <el-container  style="position:fixed; z-index:100;width:100%;">
  <el-header style="text-align: center; font-size: 12px;padding:0;margin-top:-10px">

  </el-header>
        </el-container>
  </el-row>
<br><br><br><br> -->
<div style="width:100%;margin:0 auto">
  <el-carousel height="555px" interval="8000">
    <el-carousel-item v-for="(item,index) in imgList" :key="index">
      <a href="javascript:"><img v-bind:src="item.url" width="100%" height="100%" @click="onRoutes(index)"></a>
      <h3>{{ item }}</h3>
    </el-carousel-item>
  </el-carousel>
</div>
   <div style="width:80%;margin:0 auto">
     <!-- <el-carousel >
    <el-carousel-item v-for="(item,index) in imgList" :key="index">
      <img v-bind:src="item.url" width="100%" height="100%">
      <h3>{{ item }}</h3>
    </el-carousel-item>
  </el-carousel> -->
  <br><br><br><br><br>
  <span class="item">专注、靠谱、真诚，帮助企业成功！</span>
    <br>
  <span>Focused,Reliable,Sincere.Make you succeed!</span>
  <br><br>
  <el-row>
  <!-- <el-col :span="8" v-for="(o, index) in 6" :key="o" :offset="index > 0 ? 0 : 0">
    <el-card :body-style="{ padding: '0px'}" shadow="hover">
      <img src="../assets/logo.png" class="image">
      <div style="padding: 14px;">
        <span>View</span>
        <div class="bottom clearfix">
          <el-button type="text" class="button">操作按钮</el-button>
        </div>
      </div>
    </el-card> -->
  <el-col :span="8">
    <el-card :body-style="{ padding: '0px'}" shadow="hover">
      <img src="../assets/card/1.png" class="image nav-card" @click="onRoutes(100)"  style="cursor:pointer">
      </el-card>
      <div style="padding: 14px;">
        <span style="font-size:14px">围绕生产型企业，提供全面管理功能。</span>

      </div>
  </el-col>
  <el-col :span="8">
    <el-card :body-style="{ padding: '0px'}" shadow="hover">
      <img src="../assets/card/2.png" @click="onRoutes(200)" class="image nav-card" >

    </el-card>
    <div style="padding: 14px;">
        <span style="font-size:14px">专注于商业应用，为您解决管理问题。</span>

      </div>
  </el-col>
  <el-col :span="8">
    <el-card :body-style="{ padding: '0px'}" shadow="hover">
      <img src="../assets/card/3.png" @click="onRoutes(300)" class="image nav-card">

    </el-card>
    <div style="padding: 14px;">
        <span style="font-size:14px">汽车维修、美容装潢及一站式服务管理。</span>

      </div>
    <br><br>
  </el-col>
  <el-col :span="8">
    <el-card :body-style="{ padding: '0px'}" shadow="hover" class="image nav-card">
      <img src="../assets/card/4.png" class="image">
    </el-card>

      <div style="padding: 14px;">
        <span style="font-size:14px">移动进销存、微商城订货等综合服务。</span>

      </div>
  </el-col>
  <el-col :span="8">
    <el-card :body-style="{ padding: '0px'}" shadow="hover" class="image nav-card">
      <img src="../assets/card/5.png" class="image">

    </el-card>
    <div style="padding: 14px;">
        <span style="font-size:14px">数据分析、故障排查、软件安装与培训。</span>

      </div>
  </el-col>
  <el-col :span="8">
    <el-card :body-style="{ padding: '0px'}" shadow="hover" class="image nav-card">
      <img src="../assets/card/6.png" class="image">

    </el-card>
    <div style="padding: 14px;">
        <span style="font-size:14px">为企业个性化需求提供开发服务。</span>

      </div>
  </el-col>
</el-row>

 <br><br>
 <span class="item">济胜正在为企业解决管理问题</span>
    <br>
  <span>We help to solve your problems such as...</span>
 <br><br>
 <span style="margin-left:-5%;font-size:18px">企业问题</span>
 <span style="margin-left:35%;font-size:18px">解决方案</span>
  <el-tabs tabPosition="left"  style="position：center;background-color:#f5f5f5;">
    <el-tab-pane>
      <span slot="label">
      <el-button plain class="el-tabs-button" @click="show1 = true,show2 = false,show3 = false,show4 = false">
          <h3 style="color:#409EFF"><i class="el-icon-document"></i>订单管理难</h3><br><br>
          <i><p style="margin-top:-5%">未发货订单总数有多少？正在生产的有多少？
            <!-- <br>可以生产的有多少？不能生产的有多少？为什么不能生产？ -->
            </p><br></i>
      </el-button>
      </span>
      <el-collapse-transition>
        <div v-show="show1">
          <div class="transition-box">订单进程跟踪表：已排产数量、已执行数量、已领料数量、已入库数量、已发货数量完整跟踪，订单进度情况一清二楚，免去内部沟通成本。</div>
          <div class="img-box">
            <img src="../source/images/订单管理难.jpg" />
          </div>
        </div>
      </el-collapse-transition>
    </el-tab-pane>

    <el-tab-pane>
      <span slot="label">
      <el-button plain class="el-tabs-button" @click="show2 = true,show1 = false,show3 = false,show4 = false">
          <h3 style="color:#409EFF"><i class="el-icon-edit-outline"></i>计划管理难</h3><br><br>
          <i><p style="margin-top:-5%">如何有效安排生产计划？接到紧急订单如何调整计划？
            <!-- <br>接到紧急订单如何调整计划？如何快速判断能否插单？ -->
            </p><br></i>
      </el-button>
      </span>
      <el-collapse-transition>
        <div v-show="show2">
          <div class="transition-box">生产备料分析：哪张订单物料已备齐，可以排产？加急订单是否能够提前生产？通过生产备料分析轻松帮您搞定。</div>
          <div class="img-box">
            <img src="../source/images/管理计划难1.jpg" />
          </div>
          <div class="transition-box">执行生产单缺料提醒：哪些任务单物料已备齐，可以生产，一目了然。</div>
          <div class="img-box">
            <img src="../source/images/管理计划难2.jpg" />
          </div>
        </div>
      </el-collapse-transition>
    </el-tab-pane>

    <el-tab-pane>
      <span slot="label">
      <el-button plain class="el-tabs-button" @click="show3 = true,show1 = false,show2 = false,show4 = false">
          <h3 style="color:#409EFF"><i class="el-icon-goods"></i>物料管理难</h3><br><br>
          <i><p style="margin-top:-5%">物料积压浪费严重，经常性的停工待料</p><br></i>
      </el-button>
      </span>
      <el-collapse-transition>
        <div v-show="show3">
          <div class="transition-box">车间领料做到有计划，按照生产工令生成领料单，领用数量严格按照根据BOM计算，有效管控生产物料，减少浪费。</div>
           <div class="img-box">
            <img src="../source/images/物料管理难.jpg" />
          </div>
        </div>
      </el-collapse-transition>
      </el-tab-pane>

    <el-tab-pane>
      <span slot="label">
      <el-button plain class="el-tabs-button" @click="show4 = true,show1 = false,show2 = false,show3 = false">
          <h3 style="color:#409EFF"><i class="el-icon-bell"></i>事务进度跟踪难</h3><br><br>
          <i><p style="margin-top:-5%">
            <!-- 采购进度跟进不力，改到的没到，严重影响生产进度和交期。<br> -->
            订单执行到那一步,何时能够发货？</p><br></i>
      </el-button>
      </span>
      <el-collapse-transition>
        <div v-show="show4">
          <div class="transition-box">生产任务进度表：生产到哪道工序？每道工序完成量多少？</div>
          <div class="img-box">
            <img src="../source/images/事务进度跟踪难.jpg" />
          </div>
        </div>
      </el-collapse-transition>
      </el-tab-pane>
  </el-tabs>
  <br><br>
  <span class="item">他们都选择济胜！</span>
    <br>
  <span>We are trusted!</span>
  <br><br>
  <el-carousel :interval="4000" type="card" height="200px">
    <el-carousel-item v-for="item in 6" :key="item">
      <h3>{{ item }}</h3>
    </el-carousel-item>
  </el-carousel>
  <br><br>
 </div>
 <el-footer>
   <!-- Footer -->
  <div style="width:80%;margin:0 auto;">
  <el-row>
  <el-col :span="8">
    <!-- <el-card :body-style="{ padding: '0px'}" shadow="hover">
      <img src="../assets/logo.png" class="image">
      <div style="padding: 14px;">
        <span>View</span>
        <div class="bottom clearfix">
          <el-button type="text" class="button">操作按钮</el-button>
        </div>
      </div>
    </el-card> -->
    <el-badge value="new" class="item">最新资讯</el-badge>
    <!-- <div class="scroll-wrap">
    <ul class="scroll-content" :style="{ top }">

        <li v-for="item in prizeList" :key="item">{{item.name}}</li >

    </ul>
</div> -->
    <br>
    <span style="float:right;margin-right:-150%;font-size:14px"><router-link :to="{path:'/newsList'}" class="around">
    查看更多</router-link></span>
  </el-col>
</el-row>
<div style="text-align:left;margin-left:17%">
<p class="mid"><router-link :to="{path:'/news?news_id=' + this.id_1}" class="around">
  {{ date_1 }}&nbsp;&nbsp;&nbsp;&nbsp;{{ news_1 }}</router-link></p>
  <span>{{ article }}</span>
<p class="mid"><router-link :to="{path:'/news?news_id=' + this.id_2}" class="around">
  {{ date_2 }}&nbsp;&nbsp;&nbsp;&nbsp;{{ news_2 }}</router-link> </p>
</div><p>&nbsp;</p>



<el-row type="flex" class="row-bg" justify="space-around">
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
  <el-col :span="6"><div class="grid-content bg-purple-light"></div></el-col>
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
</el-row>
   <!-- <el-row>
     <el-col>
       <el-breadcrumb separator="" style="margin-left:10%">
          <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
          <el-breadcrumb-item></el-breadcrumb-item>
          <br><br><br>
          <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item><el-breadcrumb-item></el-breadcrumb-item>
      </el-breadcrumb>
     </el-col>
   </el-row> -->
   <!-- <router-view></router-view> -->
  </div>
 </el-footer>

</div>
</template>

<script>
import axios from "axios";
// axios.get('/api').then(function (response) {
// 　　alert("api数据");
// }).catch(function (error) {
// 　　alert(error);
// });
export default {
  data: () => ({
    imgList: [
      {
        url: require("../assets/carousel/1.jpg")
      },
      {
        url: require("../assets/carousel/2.jpg")
      },
      {
        url: require("../assets/carousel/3.jpg")
      },
      {
        url: require("../assets/carousel/4.jpg")
      },
      {
        url: require("../assets/carousel/5.jpg")
      }
    ],
    article: "",
    news_1: "",
    news_2: "",
    id_1: "",
    id_2: "",
    date_1: "",
    date_2: "",
    show1: true,
    show2: false,
    show3: false,
    show4: false,
    prizeList: [{ name: 0 }, { name: 1 }],
    activeIndex: 0
  }),
  // computed: {
  //   onRoutes() {
  //     return this.$route.path.replace("/", "");
  //   }
  // },
  computed: {
    top() {
      return -this.activeIndex * 20 + "px";
    }
  },
  mounted() {
    setInterval(_ => {
      if (this.activeIndex < this.prizeList.length) {
        this.activeIndex += 1;
      } else {
        this.activeIndex = 0;
      }
    }, 1000);
    //     axios.get('/api').then((response) => {
    //       // for(var a in response.data){
    //       //   alert(response.data[a].title);
    //       // }
    //       this.news_1 = response.data[0].title;
    //       this.news_2 = response.data[1].title;
    //       var d1 = new Date(response.data[0].createTime);
    //       var d2 = new Date(response.data[1].createTime);
    //       this.date_1 = d1.getFullYear() + '-' + (d1.getMonth() + 1) + '-' + d1.getDate() + ' '
    //       // + d.getHours() + ':' + d.getMinutes() + ':' + d.getSeconds();
    //       this.date_2 = d2.getFullYear() + '-' + (d2.getMonth() + 1) + '-' + d2.getDate() + ' '
    //     }).catch(function (error) {
    // 　　  alert(error);
    //     });
    function pad2(n) {
      return n < 10 ? "0" + n : n;
    }
    axios
      .get("/asp/article.asp")
      .then(response => {
        if (response.data.rows.length == 0) {
          return;
        }
        // alert(response.data.rows[0].createTime);
        this.id_1 = response.data.rows[0].news_id;
        this.id_2 = response.data.rows[1].news_id;
        this.news_1 = response.data.rows[0].title;
        this.news_2 = response.data.rows[1].title;
        var d1 = new Date(response.data.rows[0].createTime);
        var d2 = new Date(response.data.rows[1].createTime);
        this.date_1 =
          d1.getFullYear() +
          "-" +
          pad2(d1.getMonth() + 1) +
          "-" +
          pad2(d1.getDate()) +
          " ";
        this.date_2 =
          d2.getFullYear() +
          "-" +
          pad2(d2.getMonth() + 1) +
          "-" +
          pad2(d2.getDate()) +
          " ";
      })
      .catch(function(error) {
        // alert(error);
      });
  },
  methods: {
    startHacking() {
      this.$notify({
        title: "It works!",
        type: "success",
        message:
          "We've laid the ground work for you. It's time for you to build something epic!",
        duration: 5000
      });
    },
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
    onRoutes(i) {
      console.log(i);
      switch (i) {
        case 0:
          window.open('https://www.yuque.com/jishengsoft/wendang/mbbgog');
          break;
        case 1:
          this.$router.push("/made");
          break;
        case 3:
          window.open("https://mp.weixin.qq.com/s?__biz=MzA3NDU5OTQyNg==&mid=2451872029&idx=1&sn=e0f611176ec2ba1ab1ff295a6b7c2df8&chksm=88ad6470bfdaed66e05b9e145b82949d8b2c676e6377fce0558df1281667a3bb6d780e467590&token=2005030829&lang=zh_CN#rd");
          break;
        case 4:
          this.$router.push("/agency");
          break;
        case 100:
          this.$router.push("/made2");
          break;
        case 200:
          this.$router.push("/business");
          break;
        case 300:
          this.$router.push("/carRepair");
          break;
      }
      // if(i == 1){
      //   // this.$axios('get',"../static/productList.json",{id:page1}).then(response => {
      //   //   this.itemList = response.data.result.list;
      //   // });
      //   this.$router.push('/made');
      // } else {
      //   this.$router.push('/error');
      // }
    }
  }
};
</script>

<style>
#app {
  font-family: Helvetica, sans-serif;
  text-align: center;
}
.el-breadcrumb__item {
  float: left;
  margin-left: 10%;
}
.el-breadcrumb__inner.is-link {
  color: #606266;
  font-weight: 500;
}
.el-tabs-button {
  border: 0px solid #dcdfe6;
  text-align: right;
  width: 100%;
  background-color: #f5f5f5;
}
.layout-logo {
  height: 30px;
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
.el-card {
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

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}

.el-tabs__item {
  height: auto;
  padding: 0 2px;
}

.bg-purple {
  background: #fff;
}

.grid-content {
  border-radius: 4px;
  min-height: 120px;
}
.item {
  margin-top: 10px;
  margin-left: 0%;
  font-size: 21px;
}
.mid {
  margin-top: 10px;
  margin-left: 0%;
  font-size: 16px;
}
.scroll-wrap {
  width: 200px;
  height: 50px;
  border: 1px solid blue;
  overflow: hidden;
}

.scroll-content {
  position: relative;
  transition: top 1s;
}
.around:hover {
  color: #409eff;
}
.el-card:hover img {
  -webkit-transform: scale(1.1);
  -o-transform: scale(1.1);
}
.img-box {
  margin: 10px;
}
.img-box img {
  width: 100%;
}
.transition-box {
  font-size: 16px;
  color: #409eff;
}

.nav-card {
  cursor: pointer;
}
</style>
