<template>
  <div style="width:60%;margin:0 auto;line-height:30px;margin-left:20%">
	<div>
	    <h1 style="text-align:center">「 {{ keywords }} 」相关的搜索结果</h1>
        <div>
    <!-- <div style="display: flex;justify-content: flex-start">
      <el-input
        placeholder="通过标题搜索该分类下的博客..."
        prefix-icon="el-icon-search"
        v-model="keywords" style="width: 400px" size="mini">
      </el-input>
      <el-button type="primary" icon="el-icon-search" size="mini" style="margin-left: 3px" @click="searchClick">搜索
      </el-button>
    </div> -->
    <!--<div style="width: 100%;height: 1px;background-color: #20a0ff;margin-top: 8px;margin-bottom: 0px"></div>-->
    <el-table
      ref="multipleTable"
      :data="articles"
      tooltip-effect="dark"
      style="width: 100%;overflow-x: hidden; overflow-y: hidden;border:0px"
      max-height="550"
      @selection-change="handleSelectionChange" v-loading="loading">
      <!-- <el-table-column
        type="selection"
        width="35" align="left" v-if="showEdit || showDelete">
      </el-table-column> -->
      <el-table-column
        label="标题"
        width="400" align="left">
        <template slot-scope="scope"><span style="color: #409eff;cursor: pointer" @click="itemClick(scope.row)">{{ scope.row.title}}</span>
        </template>
      </el-table-column>
      <el-table-column
        label="发布时间" width="150" align="left">
        <!-- <template slot-scope="scope">{{ scope.row.editTime | formatDateTime}}</template> -->
        <template slot-scope="scope">{{ scope.row.createTime }}</template>
      </el-table-column>
      <el-table-column
        prop="nickname"
        label="作者"
        width="110" align="left">
      </el-table-column>
      <el-table-column
        prop="cateName"
        label="所属分类"
        width="120" align="left">
      </el-table-column>
      <!-- <el-table-column label="操作" align="left" v-if="showEdit || showDelete">
        <template slot-scope="scope">
          <el-button
            size="mini"
            @click="handleEdit(scope.$index, scope.row)" v-if="showEdit">编辑
          </el-button>
          <el-button
            size="mini"
            type="danger"
            @click="handleDelete(scope.$index, scope.row)" v-if="showDelete">删除
          </el-button>
        </template>
      </el-table-column> -->
    </el-table>
    <div class="blog_table_footer">
      <el-button type="danger" size="mini" style="margin: 0px;" v-show="this.articles.length>0 && showDelete"
                 :disabled="this.selItems.length==0" @click="deleteMany">批量删除
      </el-button>
      <span></span>
      <el-pagination
        background
        :page-size="pageSize"
        layout="prev, pager, next"
        :total="totalCount" @current-change="currentChange" v-show="this.articles.length>0">
      </el-pagination>
    </div>
  </div>
	</div>
</div>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      keywords: "",
      articles: [],
      selItems: [],
      loading: false,
      currentPage: 1,
      totalCount: -1,
      pageSize: 10,
      keywords: "",
      dustbinData: []
    };
  },
  mounted() {
    this.getParams();
    this.loading = true;
  },
  methods: {
    getParams() {
      // 取到路由带过来的参数
      var routerParams = this.$route.query.keywords;
    //   alert(routerParams + "传出");
      // 将数据放在当前组件的数据内
      this.keywords = routerParams;
      this.loadBlogs(1, this.pageSize);
    },
    searchClick() {
      this.loadBlogs(1, this.pageSize);
    },
    itemClick(row) {
      this.$router.push({ path: "/news", query: { news_id: row.news_id } });
    },
    deleteMany() {
      var selItems = this.selItems;
      for (var i = 0; i < selItems.length; i++) {
        this.dustbinData.push(selItems[i].news_id);
      }
      this.deleteToDustBin(selItems[0].state);
    },
    //翻页
    currentChange(currentPage) {
      this.currentPage = currentPage;
      this.loading = true;
      this.loadBlogs(currentPage, this.pageSize);
    },
    loadBlogs(page, count) {
      var _this = this;
      // var url = '';
      // if (this.state == -2) {
      //   url = "/admin/article/all" + "?page=" + page + "&count=" + count + "&keywords=" + this.keywords;
      // } else {
      //   url = "/article/all?state=" + this.state + "&page=" + page + "&count=" + count + "&keywords=" + this.keywords;
      // }
      // getRequest(url).then(resp=> {
      //   _this.loading = false;
      //   if (resp.status == 200) {
      //     _this.articles = resp.data.articles;
      //     _this.totalCount = resp.data.totalCount;
      //   } else {
      //     _this.$message({type: 'error', message: '数据加载失败!'});
      //   }
      // }, resp=> {
      //   _this.loading = false;
      //   if (resp.response.status == 403) {
      //     _this.$message({type: 'error', message: resp.response.data});
      //   } else {
      //     _this.$message({type: 'error', message: '数据加载失败!'});
      //   }
      // }).catch(resp=> {
      //   //压根没见到服务器
      //   _this.loading = false;
      //   _this.$message({type: 'error', message: '数据加载失败!'});
      // })
      axios.get("/asp/articleList.asp?state=1&page=" + page +"&count=" + count +"&keywords=" + this.keywords)
        .then(response => {
          _this.loading = false;
          _this.articles = response.data.rows;
          _this.totalCount = response.data.total;
        })
        .catch(function(error) {
          _this.loading = false;
          _this.$message({ type: "error", message: "数据加载失败!" });
        });
    },
    handleSelectionChange(val) {
      this.selItems = val;
    },
    handleEdit(index, row) {
      this.$router.push({
        path: "/editBlog",
        query: { from: this.activeName, id: row.news_id }
      });
    },
    handleDelete(index, row) {
      this.dustbinData.push(row.news_id);
      this.deleteToDustBin(row.state);
    },
    deleteToDustBin(state) {
      var _this = this;
      this.$confirm(
        state != 2
          ? "将该文件放入回收站，是否继续?"
          : "永久删除该文件, 是否继续?",
        "提示",
        {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }
      )
        .then(() => {
          _this.loading = true;
          var url = "/asp/articleDelete.asp";
          // if (_this.state == -2) {
          //   url = "/admin/article/dustbin";
          // } else {
          //   url = "/article/dustbin";
          // }
          postRequest(url, { aids: _this.dustbinData, state: _this.state }).then(
            resp => {
              // if (resp.status == 200) {
              //   var data = resp.data;
              //   _this.$message({ type: data.status, message: data.msg });
                // if (resp.data == "success") {
                  window.bus.$emit("blogTableReload"); //通过选项卡都重新加载数据
                // }
              // } else {
              //   _this.$message({ type: "error", message: "删除失败!" });
              // }
              _this.loading = false;
              _this.dustbinData = [];
            },
            resp => {
              _this.loading = false;
              _this.$message({ type: "error", message: "删除失败!" });
              _this.dustbinData = [];
            }
          );
        })
        .catch(() => {
          _this.$message({
            type: "info",
            message: "已取消删除"
          });
          _this.dustbinData = [];
        });
    }
  },
  watch: {  
    // 监测路由变化,只要变化了就调用获取路由参数方法将数据存储本组件即可  
      '$route': 'getParams',
      keywords:function(val, oldVal) {
              if (!this.keywords){
                  // alert("输入为空");
                  this.loadBlogs(1,7);

          }
      }
    }  
};
</script>

<style>
</style>