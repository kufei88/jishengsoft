<template>
  <div id="ss">
    <div style="width:90%;margin:0 auto;">
      <img src="../assets/business/济胜商务管理系统banner.jpg">
      <br><br><br><br><br>
      <div  style="width:80%;margin:0 auto;">
        <div class="content">
          <span class="items">经典版：简单应用</span>
          <P>提供采购、销售、库存、应收、应付、短信等管理，实现企业进销存核心业务的管理。</p>
          <br>
          <span class="items">标准版：常规应用</span>
          <p>常规的单店面客户基本上都可以满足需求。管理点和经典版类似，增加了订单管理、批次管理、预收预付、会员管理等功能。库存管理方面还提供了物品的赠送、借进、借出、仓库报损等功能，从而达到对企业库存更为全面管理手段。</p>
          <br>
          <span class="items">增强版：较高级的应用</span>
          <p>在标准基础上可以支持多个店面的统一管理，提供售前管理。并能够适应各种各样的行业特性。适用于区域行业领先者；对管理有较高要求的企业；连锁经营商贸类企业。</p>
          <span class="items">全能版：特色应用</span>
          <p>在增强版基础上增加送货派工安装、维修保养服务管理。主要适用于商品价值较高或对“服务”有较高要求的企业，比如家电、电梯、建材、卫浴、净水机等行业。</p>
        </div>
        <img src="../assets/business/济胜商务-01.png">
        <br><br><br>
        <div class="content">
          <h2 class="title">功能示例</h2>
          <span class="items">资金风险控制：</span>
          <li> 最多欠款控制：可设置某客户是否允许欠款，客户最多欠款是多少。超出最多欠款时提供3种处理方案：进行提醒、禁止销售、由上级授权后才能销售。</li>
          <li>经手人最多欠款：某区域内客户由一个业务员负责管理，要控制该区域所有客户的总欠款，可以设置经手人最多欠款。</li>
          <li>帐期控制：3种付款期限类型可选，灵活设置。到期应收款自动预警。</li>
          <li>订单收款比例控制：销售订单的收款比例达到一定额度，才能销售发货。不同权限的操作员可设置不同的比例。</li>
          <br>
          <span class="items">销售价格管控：</span>
          <li> 促销价、会员单品优惠价、会员类别折扣、客户类别折扣、客户最近售价、客户默认售价。</li>
          <br>
          <span class="items">经营决策分析：</span>
          <li> 近期未销售商品清单。</li>
          <li>库存超限预警、临期商品预警等。</li>
          <li>客户销售增长率分析、客户销售月份分析、物品销售增长率分析、物品销售月份分析、地区热销产品排行、地区热销系列排行、地区均价分析表等。</li>

          <br>
          <span class="items">物品批次的灵活应用：</span>
          <li> 可以管理食品、药品行业的生产批号，保质期。</li>
          <li>可以完成对服装、鞋帽行业的颜、尺码色管理。  </li>
          <li>可以完成油漆、磁砖等行业的色号管理。 </li>
          <li>可以完成有些企业对相同物品、不同包装数的管理要求。  </li>
          <li>可以完成相同物品存放不同货位的管理。  </li>
          <li>可以完成比如布匹行业每匹不同米数，塑胶、化纤每卷不同公斤数的管理。  </li>
          <li>可以完成库存按不同进货单据分开存放，以达到销售跟踪进货的管理。  </li>
          <li>可以完成进货物品按经手人、供应商分开管理。</li>


          <br>
          <p>《济胜商务管理系统》支持全面会员管理、三包服务、来电弹屏、短信群发；支持PDA、手机APP移动端应用。并且拥有无与伦比的自定义平台，满足不同用户的个性化需求。</p>
          <img src="../source/images/business0.png" style="width:80%">
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
</style>
