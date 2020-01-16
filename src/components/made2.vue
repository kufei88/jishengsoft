<template>
  <div id="ss">
    <div style="width:90%;margin:0 auto;">
      <br>
      <div  style="width:85%;margin:0 auto;">
        <span class="items" >济胜智造管理系统</span><br><br>
        <div class="c_content">
          <img src="../assets/made2/济胜智造系统banner.jpg" style="width:100%">
        </div>
        <br><br>
        <span style="font-size:16px"><b>立足企业自身特点，以满足用户需求为核心，切实把握企业痛点，解决企业管理难题。</b></span><br><br>
        <p style="font-size:16px;margin-left:1.5%"><span>缩短制造周期  30%</span><span style="margin-left:10%">减少制造时间  75%</span></p>
        <p style="font-size:16px"><span>降低在制品滞留库存  30%</span><span style="margin-left:7%">提高生产效率  30%</span></p>
        <p style="font-size:16px"><span>减少为交班而准备的工作   55%</span><span style="margin-left:7%">减少待料停机时间  30%</span></p>
          <br><br>
          <span class="items" style="color: #409eff;">流程图</span><br><br>
          <img src="../assets/made2/流程.png">

          <br><br>
          <span class="items" style="color: #409eff;">核心功能</span><br><br>
          <img src="../assets/made2/核心功能.png"><br><br>

          <el-row>
            <el-col :span="4">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/made2/预警预测.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px">产能预测，智能排产</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="4">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/made2/条码.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px">条码批次追踪</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="4">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/made2/序列号.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px">生产序列号管理</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="4">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/made2/扫码.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px">手机扫码报工</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="4">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/made2/看板.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px">生产工序看板</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="4">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/made2/核算.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px">多种成本核算方式</span>
              </div>
            </el-card>
            </el-col>
          </el-row>
        </div>
        <br><br>
        <div style="width:870px;margin:0 auto">
          <span class="items" style="color: #409eff;">服务与支持</span><br><br>
          <el-row>
            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/made2/专家.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px">管理专家现场调研</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/made2/咨询顾问.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px">专属顾问全天支持</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/made2/售后.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px">专业售后服务保障</span>
              </div>
            </el-card>
            </el-col>
          </el-row>



          <br><br>
          <!-- <Tabs value="name1">
            <TabPane label="标签一" name="name1">标签一的内容
              <el-carousel height="340px" interval="8000" :next="alert">
          <el-carousel-item v-for="(item,index) in imgList" :key="index">
           <a href="javascript:"><img v-bind:src="item.url" width="100%" height="100%" @click="onRoutes(index)"></a>
            <h3>{{ item }}</h3>
          </el-carousel-item>
          </el-carousel>
            </TabPane>
            <TabPane label="标签二" name="name2">标签二的内容</TabPane>
            <TabPane label="标签三" name="name3">标签三的内容</TabPane>
          </Tabs> -->
<!--
          <p>1.生产进度表，每道工序完成多少数量、完成率一目了然。</p>
          <img src="../assets/solution_1/01.png">
          <br><br>
          <p>2.订单进程跟踪表，订单执行情况一清二楚，无需跑到车间一个个询问。</p>
          <img src="../assets/solution_1/02.png">
          <br><br>
          <p>3.工序进度看板</p>
          <img src="../assets/solution_1/03.png">
          <br><br>
          <p>4.支持订单技术文件管理</p>
          <img src="../assets/solution_1/04.png">
          <br><br>
          <p>5.可根据订单交付日期、日可产量、生产提前天数，自动计算计划开工日期。</p>
          <img src="../assets/solution_1/05.png">
          <br><br>
          <p>6.用不同颜色反应下级物料完成情况。</p>
          <img src="../assets/solution_1/06.png">
          <br><br>
          <p>7.生产工令生成二维码，便于车间跟踪流转。</p>
          <img src="../assets/solution_1/07.png"> -->

      </div>
    </div>
  </div>
</template>

<script>
export default {
  data: () => ({
    imgList: [
      {
        url: require("../assets/solution_1/01.png")
      },
      {
        url: require("../assets/solution_1/02.png")
      },
      {
        url: require("../assets/solution_1/03.png")
      },
      {
        url: require("../assets/solution_1/04.png")
      },
      {
        url: require("../assets/solution_1/05.png")
      },
      {
        url: require("../assets/solution_1/06.png")
      },
      {
        url: require("../assets/solution_1/07.png")
      }
    ]
  }),
  methods: {
    alert() {
      alert("next");
    }
  }
};
</script>

<style>
#app {
  font-family: Helvetica, sans-serif;
  text-align: center;
}
.items {
  margin-top: 10px;
  margin-left: 0%;
  font-size: 21px;
  /* color: #409eff; */
}
.c_content {
  text-align: left;
  line-height: 30px;
  align-items: center;
  display: flex;
  margin: 0 auto;
}
body {
  font-size: 14px;
}
</style>
