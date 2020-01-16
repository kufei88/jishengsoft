<template>
  <div id="ss">
    <div style="width:90%;margin:0 auto;">
      <img src="../source/images/汽修banner.jpg" style="width:80%">
      <br>
      <div  style="width:80%;margin:0 auto;">
        <div class="content">

          <P>济胜汽车系列软件包含汽配销售管理、汽车维修管理和汽车美容会员管理三大方面，满足不同类型的汽车售后服务企业的进销存、会员管理、业务控制、远程应用的需求。</p>
          <br>
          <h2 class="title">软件版本</h2>
          <span class="items">汽修标准版</span>
          <p>针对单体汽修公司。</p>
          <p>具有：维修流程管理、配件管理、会员管理、应付款、应收款等功能。</p>
          <p>不具备的功能：配件销售、连锁店管理。</p>
          <br>
          <span class="items">汽车美容标准版</span>
          <p>针对单体汽车美容店。</p>
          <p>具有：配件销售、配件库存管理，服务项目管理、服务开单管理，会员、积分等功能。</p>
          <p>不具备的功能：连锁管理、汽修流程管理。</p>
          <br>
          <span class="items">汽车一站式服务版</span>
          <p>集汽配、汽车美容、汽修于一体。对快修、汽车美容、汽配销售于一体的完整的解决方案。提供：服务开单+维修流程二种模式管理。支持连锁店管理。</p>
          <br>
          <br>
          <br>
          <h2 class="title">维修流程管理</h2>
          <br>
          <br>
          <p>《济胜汽修管理系统》提供了完整的汽修企业维修流程管理，主体流程如下图：</p>
          <br>
          <br>
          <img src="../source/images/汽修流程图.jpg" style="width:80%">
          <br>
          <br>
          <p>维修流程完全自由定义，最短流程：接车时直接完成结算。</p>
          <br>
          <br>
          <br>
          <h2 class="title">各类维修报表</h2>
          <br>
          <br>
          <span class="items">1．车辆维修明细查询</span>
          <p>以车辆为角度，查询该车辆在公司的整个维修的历史。该窗体有多页，包括：车辆信息、维修单、维修单的项目、配件、其它费用，以及时段车辆配件及项目汇总。如下图所示：</p>
          <br>
          <img src="../source/images/车辆维修明细查询.png" style="width:80%">
          <br>
          <br>
          <span class="items">2．维修单明细查询</span>
          <p>以维修单为角度，对相应维修单的项目、配件、其它费用等进行查询。如下图。可以根据车辆来源。
          其中的“维修单明细查询”是将目前所有维修都查询出来，其中包含未结算的维修单，这样就可以查询目前所有维修单的具体进度。</p>
          <br>
          <img src="../source/images/维修单明细查询.png" style="width:80%">
          <br>
          <br>
          <span class="items">3. 维修单汇总查询</span>
          <p>以维修单作为统计对象，可以方便统计“结算/抄件/索赔维修单”的汇总情况，比如可以查询指定期间的维修项目收入、维修配件收入、维修项目成本、配件成本等等。</p>
          <br>
          <br>
          <span class="items">4．领退料查询</span>
          <p>根据实际用料查询配件情况，包含已领未结算的配件。</p>
          <br>
          <br>
          <span class="items">5. 结算配件/项目查询</span>
          <p>以结算的维修单作为依据，查询配件和维修项目汇总情况，这里的查询不包括未结算的配件。</p>
          <br>
          <br>
          <span class="items">6．客户回访查询</span>
          <p>用于查询、统计客户满意度。</p>
        </div>








      </div>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    startHacking() {
      this.$notify({
        title: "It works!",
        type: "success",
        message:
          "We've laid the ground work for you. It's time for you to build something epic!",
        duration: 5000
      });
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
  font-size: 18px;
  font-weight: bold;
}
.content {
  text-align: left;
  line-height: 30px;
}
body {
  font-size: 14px;
}
.title {
  color: #409eff;
  text-align: center;
}
p {
  font-size: 16px;
}
</style>
