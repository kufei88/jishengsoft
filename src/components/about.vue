<template>
<div>
  <div style="width:90%;margin:0 auto;">
  <img src="../assets/about/About.jpeg">
  <br><br><br><br><br>
  </div>
  <div id="app" style="width:72%;margin:0 auto;">
  <p class="item">工作在济胜</p>
  <hr style="height:10px;border:none;border-top:1px solid #DCDFE6;" />
  <el-row>
  <div class="view view-first">
        <img src="../assets/about/story.jpg" />
        <div class="mask" >
            <h2>我们的故事</h2>
            <p>Our Story begins...</p>
            <a href="javascript:;" @click="modal1 = true" class="info">Read More</a>
      <Modal 
        v-model="modal1"
        title="济胜的诞生"
        >
        <img src="../assets/about/born.jpg" style="margin-left:20%"><br>
  			<span class="lheight">一次偶然的机会，浙江师范大学经济与管理学院的一位教授听某商贸公司老总谈起他们公司在经营中经常出现缺货、
				断货、客户流失和应收款失控等管理问题。
				并且，该公司从上世纪90年代初就开始陆续引进企业管理软件。
				但是由于软件功能不理想或服务不到位等原因，以至于到了2000年，
				信息化的效果还是不理想。于是，这位教授组织了一个团队，开始开发“适合这个公司，
				又融合不同公司个性化需要”的软件。让人惊喜的是：信息化项目的实施非常成功，
				有效解决了该公司上述诸多问题，使得这家商贸公司当年净利润翻了一
			番。</span>
			<div class="lheight">这给了这位教授极大的鼓舞。“我为什么不用我的专业技术为中小企业
				作点贡献呢？”本着这样一种理念，他开始了中小企业信息化之旅。</div>
			<div class="lheight">就这样，济胜软件公司的前身金华金智软件公司诞生了……</div>
      </Modal>
        </div>
    </div>
	<div class="view view-first">
        <img src="../assets/about/location.png" />
        <div class="mask">
            <h2>在这里工作</h2>
            <p>Work here...</p>
            <a href="javascript:;" @click="dialogVisible_2 = true,dialogVisible = false,
            dialogVisible_3 = false" class="info">Read More</a>
			<el-dialog title="联系我们" :visible.sync="dialogVisible_2" style="text-align:left">
			<img src="../assets/about/location.png" style="margin:0 auto"><br>
			<div style="text-align:center">
  			<span>公司地址：浙江省金华市师大街236号</span>
			<div>联系电话：0579-83181608</div>
			<div>公司传真：0579-83181603</div>
			</div>
			</el-dialog>
        </div>
    </div>
	<div class="view view-first">
        <img src="../assets/about/download.jpg" />
        <div class="mask">
            <h2>资料中心</h2>
            <p>Download...</p>
            <a href="javascript:;" @click="dialogVisible_3 = true,dialogVisible_2 = false,
            dialogVisible = false" class="info">Read More</a>
			<el-dialog title="济胜的诞生" :visible.sync="dialogVisible_3" style="text-align:left">
			<img src="../assets/about/born.jpg" style="margin:0 auto"><br>
  			<span>Download</span>
			<div>aaaa</div>
			<div>bbbb</div>
			</el-dialog>
        </div>
    </div>
  </el-row>
  <br>
  <p class="item">济胜公司介绍</p>
  <div style="text-align:left">
  <el-collapse  v-model="activeNames">
	  
    <el-collapse-item name="1">
    <template slot="title">
	<span style="color:#409EFF;font-size:18px;">济胜经营之道</span>
    </template>
    <div><img src="../assets/about/经营理念.png">这是一个浮躁的时代，也是充满机遇与挑战的时代。济胜公司18年来，潜心于
		济胜管理系统的思考和研发，将软件功能做到极致。在与客户共同成长的同时，将优秀的管理理念融入到软件中，
		使得济胜软件独树一帜，能很好地适应不同企业的个性化管理需求。
	</div>
    <div>济胜的18年发展之路，经过几次转型升级，已经由一家纯技术型公司逐渐成长
		为软件开发销售、信息化系统实施和企业管理咨询一体化解决方案供应商，是企业成长的战略合作伙伴！
	</div>
	<div>
		济胜这几年除了自身发展外，还在不断研究如何让我们的合作伙伴快速成长起来。帮助用户成功，帮助伙伴成功，
		帮助员工成功是济胜永续经营之道。
	</div>
  </el-collapse-item>

  <el-collapse-item  name="2">
	<template slot="title">
	<span style="color:#409EFF;font-size:18px;">济胜产品观</span>
    </template>
    <div><img src="../assets/about/产品.png">目前管理软件主要有2个流派：</div><div>
	一个是“傻瓜”派，认为软件应该十分易用，无需培训。然而以牺牲软件功能来达到“傻瓜”化显然是得不偿失的，
	一旦用户提出新的管理要求时，往往只能换软件。</div>
	<div>另一个是“标准”派，认为既然管理软件已包含了一整套科学的管理思想，企业应用管理软件只要严格执行软件的指令就行。
		如果企业目前管理流程与软件提供的流程不同，企业必须改掉目前的流程。这一流派脱离了企业实际情况，实施方案往往很难落地。</div>
    <div>济胜软件的设计理念比较完整，很多细节功能很有特色，而且产品的灵活性、可配置性较强，包括：模块可配置，工作流程可配置，系统参数可配置。</div>
    <div>每个公司经营产品种类各不相同、管理思路各异。应用企业管理软件最怕是想要的功能没有。但在功能满足的情况下，
		又怕是操作太复杂。所以，济胜软件能够根据企业的特点，进行灵活地个性化设置。随着管理理念的不断更新，
		济胜软件做到了每时每刻都在不断完善，不断使自己变得更易用，功能更强！</div>
  </el-collapse-item>
  <el-collapse-item  name="3">
	<template slot="title">
	<span style="color:#409EFF;font-size:18px;">济胜服务观</span>
    </template>
    <div><img src="../assets/about/服务.png">就管理软件而言，面对的是一个公司的整体管理，会遇到供应商、客户、
	物流、资金流、生产工序等各种各样的管理要求，而管理软件为满足不同客户
	需求而设计，其逻辑非常复杂。此时如果没有专业的服务，客户不可能清楚软
	件究竟能帮他完成哪些事情，哪怕自己花大量时间来摸索也无法理清。</div>
    <div>我们作为软件服务商，应该为企业提供系统的售前咨询、方案制订、售中
	培训到实施、售后维护以及个性化开发等专业服务，帮助企业梳理业务流程，
	从而帮助提升企业的管理效率。</div>
    <div>选择了一款软件，就是选择了一个战略合作伙伴！</div>
  </el-collapse-item>
  <el-collapse-item  name="4">
	<template slot="title">
	<span style="color:#409EFF;font-size:18px;">济胜专业团队</span>
    </template>
    <div><img src="../assets/about/团队.png">一个企业的管理其实是十分复杂和深奥的，应该说是一百家企业就有一百种情况；
	而企业管理软件是解决各企业的实际问题，这样就要求管理软件从业者一定得精通软件，同时要了解企业。</div>
    <div>济胜拥有技术领先的开发团队、经验丰富的实施团队、拥有20年管理经验的咨询专家以及专业的市场营销队伍，还有一批可爱的合作伙伴，
		和济胜软件一起持续发展。</div>
  </el-collapse-item>
  </el-collapse>
  </div>
  </div>
  </div>
</template>

<script>
import 'iview/dist/styles/iview.css';
// Vue.component('Button', Button);
export default {
  data() {
    return {
    activeNames: ['1','2','3','4'],
    dialogVisible: false,
	  dialogVisible_2: false,
    dialogVisible_3: false,
    modal1: false
    };
  },
  mounted() {
    // window.open("https://jishengsoft.github.io/#/Blog/BlogList");
  }
};
</script>
<style>
@import "../assets/about/css/demo.css";
@import "../assets/about/css/style_common.css";
@import "../assets/about/css/style1.css";
#app {
  font-family: Helvetica, sans-serif;
  text-align: center;
}
.item {
  font-size: 21px;
}
.lheight {
  line-height: 30px
 }
</style>