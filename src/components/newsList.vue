<template>
  <div style="width:55%;margin:0 auto;line-height:30px;margin-left:13%">
    <el-row v-loading="loading">
    <el-col>
      <Scroll :on-reach-bottom="handleReachBottom" height="500" style="width:670px;margin-left:0%;">
        <el-button class="el-list-button" v-for="(item, index) in articles" :key="index" @click="toDetail(item.news_id)">
            <h1 >{{ item.title }}</h1>
            <hr style="border:none;border-top:1px solid #DCDFE6;margin-top:159px;width:100%" />
        </el-button>
        <!-- <Card  v-for="(item, index) in list1" :key="index" style="margin: 32px 0">
            Content {{ item }}
        </Card> -->
    </Scroll>
    </el-col>
    <Card style="width:320px;text-align:center;margin-left:780px;" :dis-hover="true">
          <Avatar icon="person" size="large" />
        <div style="text-align:center">
            <h3>A high quality UI Toolkit based on Vue.js</h3>
            <el-button type="primary">查看更多内容，猛戳这里</el-button>
        </div>
    </Card>
    <br />
    <Affix :offset-top="50" @on-change="change" style="margin-left:780px;">
    <div style="width:320px;text-align:left;float:left">
    <h3>相关内容</h3>
    <Timeline >
        <TimelineItem>
            <p class="time">1976年</p>
            <p class="content">问世</p>
        </TimelineItem>
        <TimelineItem>
            <p class="time">1984年</p>
            <p class="content">发布</p>
        </TimelineItem>
        <TimelineItem>
            <p class="time">2007年</p>
            <p class="content">发布</p>
        </TimelineItem>
    </Timeline>
    <el-card shadow="never" style="width:320px;margin-left:0px">
      <p class="light">下一篇</p>
      <p class="mid">8：30 — 17：30</p>
    </el-card>
    </div>
    </Affix>
  </el-row>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      articles: [],
      loading: false,
      activeName: "",
      keywords: "",
      list1: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    };
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    handleReachBottom() {
      return new Promise(resolve => {
        setTimeout(() => {
        //   const last = this.articles[this.articles.length - 1];
        //   alert(last.title);
        //   for (let i = 1; i < 11; i++) {
        //     this.articles.push({'title':'azx'+ i});
        //   }
        var _this = this;
        var i = this.articles.length; //TO DO 判断是否全部加载完成
        _this.loadBlogs( i + 2 );     //每次下拉多加载两条
        resolve();
        }, 2000);
      });
    },
    loadBlogs(count) {
      var _this = this;
      axios.get("/asp/articleList.asp?state=" + 1 + "&page=" + 1 +"&count=" + count + "&keywords=" + this.keywords)
      .then(response => {
        _this.loading = false;
        _this.articles = response.data.rows;
      })
      .catch(function(error) {
        _this.loading = false;
        _this.$message({ type: "error", message: "数据加载失败!" });
      });
    },
    toDetail(id){
      let routeData = this.$router.resolve({
      path: "/news",
      query: {news_id:id},
      });
      window.open(routeData.href, '_blank');
      // this.$router.push('/news?news_id=' + id);
    }
  },
  mounted() {
    var id = this.$route.query.news_id;
    var _this = this;
    _this.loadBlogs(3);    //显示3条新闻
  }
};
</script>
<style>
.time {
  font-size: 14px;
  font-weight: bold;
}
.content {
  padding-left: 5px;
}
.light {
  color: #bbbec4;
  font-size: 14px;
}
.el-list-button {
  border: 0px solid #dcdfe6;
  width: 98%;
  height: 200px;
  margin-left: 10px;
  padding: 12px 0px;
}
td{ border:0px solid black; width:100px}
th{ border:0px solid black; width:100px}
table { border:0px solid black; width:100px}
</style>