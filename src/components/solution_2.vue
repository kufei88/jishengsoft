<template>
  <div id="ss">
    <div style="width:90%;margin:0 auto;">
      <br>
      <div  style="width:85%;margin:0 auto;">
        <span class="items" >家装建材行业解决方案</span><br>
        <span>ERP solutions for building materials</span><br><br><br>
        <span class="items" style="color: #409eff;">行业现状</span><br><br>
        <div class="c_content">
          <img style="margin-left:3%" src="../assets/solution_2/1.png">
          <span style="margin-left:10%">家装建材行业涉及批发、零售、工程、服务等多种经营业态，产品种类多、管理要求各不相同。既有标准产品销售，也有定制产品，管理流程非常复杂。济胜家装建材解决方案专门解决该行业的管理难点，帮助企业有效管理潜在客户、高效处理客户订单、提高库存周转率，全面提高运营效率、提升企业核心竞争力。
          <br><br>适用范围：瓷砖、卫浴、地板、家具、橱柜、灶具、吊顶、板材等企业。<br><br><span style="color: #409eff;font-size:16px">销售提升50%，成本降低30%</span></span>
        </div>
          <br><br>
          <span class="items" style="color: #409eff;">济胜家装建材解决方案为您实现</span><br><br>
          <el-row>
            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_2/流程.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">智能化全流程管理</span><br>
              售前：意向客户跟踪进程管理；售中：开单收银、配送安装；售后：维修保养、回访管理。实现企业业务流程智能化管控，提高客户忠诚度。</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_2/提醒.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">送货安装提醒</span><br>
              预约时间送货会自动提醒，确保及时送货，提升客户满意度。同时可管理送货安装费用提成。</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_2/数量.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">数量多维度管理</span><br>
              支持片、平方、箱数、零数、重量、面积、体积等多计量单位管理，满足不同管理需求。</span>
              </div>
            </el-card>
            </el-col>
            </el-row>
            
            <el-row>
            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_2/收款.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">订单收款比例控制</span><br>
              每张订单的预售款必须达到相应比例才能发货，降低资金回收风险。收款比例的多少可以根据权限设置。</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_2/业绩.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">业绩提成自动计算</span><br>
              可设置任意提成规则，轻松搞定月末提成计算</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_2/app接口.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">便捷的移动APP应用</span><br>
              通过手机就可以随时管理订单、查看报表，无论您在出差还是在度假，公司运营情况一手掌握。</span>
              </div>
            </el-card>
            </el-col>
          </el-row>
        </div>
        <br><br>
        <div style="width:870px;margin:0 auto">
          <span class="items" style="color: #409eff;">应用示例</span><br><br>
          <el-carousel height="340px" interval="8000">
          <el-carousel-item v-for="(item,index) in imgList" :key="index">
           <a href="javascript:"><img v-bind:src="item.url" width="100%" height="100%" @click="onRoutes(index)"></a>
            <h3>{{ item }}</h3>
          </el-carousel-item>
          </el-carousel>
          <br><br>

      </div>
    </div>
  </div>
</template>

<script>
export default {
  data: () => ({
    imgList: [
      {
        url:require('../assets/solution_1/01.png')
      },
      {
        url:require('../assets/solution_1/02.png')
      },
      {
        url:require('../assets/solution_1/03.png')
      },
      {
        url:require('../assets/solution_1/04.png')
      },
      {
        url:require('../assets/solution_1/05.png')
      },
      {
        url:require('../assets/solution_1/06.png')
      },
      {
        url:require('../assets/solution_1/07.png')
      }
    ]
  }),
  methods: {
    alert(){
      alert('next');
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
  text-align:left;
  line-height:30px;
  align-items: center;
  display: flex;
  margin:0 auto;
}
body {
  font-size: 14px;
}
</style>