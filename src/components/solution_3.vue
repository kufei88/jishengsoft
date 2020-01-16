<template>
  <div id="ss">
    <div style="width:90%;margin:0 auto;">
      <br>
      <div  style="width:85%;margin:0 auto;">
        <span class="items" >医疗器械行业解决方案</span><br>
        <span>ERP solutions for medical equipment</span><br><br><br>
        <span style="font-size:14px">
        济胜软件专门针对医疗器械行业的管理需求进行开发，符合最新GSP监管流程，满足企业办证、换证及日常业务管理需求。<br>
        具有功能强大、设置灵活、界面直观、操作简便等特点。帮助您解决经营管理难题</span><br><br>
          <br><br>
          <el-row>
            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_3/质量.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">全程质量追踪</span><br>
              对经营业务的环节进行质量跟踪和记录，保证质量控制的实时性和有效性。建立完善的供货商和客户档案，实现产品质量的可追溯性。</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_3/审批.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">首营企业、品种多级审批</span><br>
              首营企业和首营品种需要由业务部门提交申请，经质管部负责人审核，再由质量负责人审批的管理流程。审批通过并允许经营才能进行购销业务。</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_3/预警灯.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">资质证件近效期预警</span><br>
              对供应链上下游企业的经营资质进行审核，对资质证件的有效期进行预警；同时支持产品注册近效期预警。</span>
              </div>
            </el-card>
            </el-col>
            </el-row>
            
            <el-row>
            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_3/预警通知.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">库存商品近效期预警</span><br>
              支持产品批号、灭菌批号、生产日期、有效期管理，并提供库存商品近效期预警、严格控制过期商品禁止销售。</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_3/岗位.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">根据岗位职责分配权限</span><br>
              操作权限严格岗位职责细分，并设置独立密码。各岗位操作员对自己的操作行为负责，杜绝越权、越岗操作。</span>
              </div>
            </el-card>
            </el-col>

            <el-col :span="8">
            <el-card :body-style="{ padding: '0px'}" shadow="never" style="border: 0px;">
              <div style="background:url(src/assets/solution_3/流程.png); height:128px; width:128px;margin:0 auto"></div>
              <div style="padding: 14px;">
              <span style="font-size:14px"><span style="font-size:17px">严格的流程管控</span><br>
              所有单据都提供审核功能，并生成符合GSP规范的工作记录，提高质量管理水平。</span>
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