<template>
  <div style="width:55%;margin:0 auto;line-height:30px;margin-left:14%">
    <el-row v-loading="loading">
    <el-col :span="24">
      <div style="text-align: left;">
        <!-- <el-button type="text" icon="el-icon-back" @click="goBack" style="padding-bottom: 0px;">返回</el-button> -->
      </div>
    </el-col>
    <el-col :span="24">
      <div style="text-align:left">
        <div><h1 style="margin-top: 0px;margin-bottom: 0px;">{{article.title}}</h1></div>
        <div style="width: 100%;margin-top: 5px;display: flex;justify-content: flex-end;align-items: center">
          <div style="display: inline; color: #20a0ff;margin-left: 50px;margin-right:20px;font-size: 12px;">
            {{article.nickname}}
          </div>
          <span style="color: #20a0ff;margin-right:20px;font-size: 14px;">浏览 {{article.pageView==null?0:article.pageView}}</span>
          <span style="color: #20a0ff;margin-right:20px;font-size: 14px;"> {{article.createTime}}</span>
          <el-tag type="success" v-for="(item,index) in article.tags" :key="index" size="small"
                  style="margin-left: 8px">{{item.tagName}}
          </el-tag>
          <span style="margin:0px 50px 0px 0px"></span>
        </div>
      </div>
      <p>&nbsp;</p>
    </el-col>
    <el-col>
      <div class="foo">
      <div style="text-align: left;font-size: 16px;" v-html="article.content">
      </div>
      </div>
    </el-col>
    <Card style="width:320px;text-align:center;margin-left:772px;" :dis-hover="true">
          <Avatar icon="person" size="large" />
        <div style="text-align:center">
            <h3>A high quality UI Toolkit based on Vue.js</h3>
            <el-button type="primary" @click="toList">查看更多内容，猛戳这里</el-button>
        </div>
    </Card>
    <br />
    <Affix :offset-top="50" style="margin-left:772px;">
        
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
      article: {},
      loading: false,
      activeName: ""
    };
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    change(status) {
      this.$Message.info(`Status: ${status}`);
    },
    toList() {
      this.$router.push('newsList');
    }
  },
  mounted() {
    var id = this.$route.query.news_id;
    var _this = this;
    this.loading = true;
    axios.get("/asp/articleDetail.asp?id=" + id)
      .then(response => {
        _this.loading = false;
        //alert(response.data.rows[0]['title']);
        _this.article = response.data.rows[0];
      })
      .catch(function(error) {
        _this.loading = false;
        //alert(error);
        _this.$message({ type: "error", message: "页面加载失败!" });
        _this.$router.push("/error");
      });
  }
};
</script>
<style scoped>
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
.foo >>> .hljs-center {
  text-align: center;
}
.foo >>> .hljs-right {
  text-align: right;
}
.foo >>> img { max-width: 90%; }
.foo >>> td{ border:1px solid black; width:100px}
.foo >>> th{ border:1px solid black; width:100px}
.foo >>> table { border:1px solid black; width:100px;border-collapse: collapse}
.foo >>> ul li {
  margin: 0px;
  padding: 0px;
  list-style: outside;
}
.foo >>> ol li{list-style:outside;
  list-style-type: decimal;
}
</style>