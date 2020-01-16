<template>
  <div style="height:80%;">
      
      <div class="pic-404" ><transition name="bounce">
        <img v-if="show" class="pic-404__parent" :src="img_404" alt="404" width="50%">
</transition>
        <div class="agileits_main_grid_right">
            <h1 style="color:#409EFF">抱歉，该页面不存在......</h1>
            <p style="float:left">请检查您输入的网址是否正确</p><br><br><br><br>
			<a style="float:left" href="#" @click="goHome">返回上一页</a>
		</div>
      </div>
      
      <div>
      </div>
    </div>
</template>

<script>
import img_404 from '../assets/404_images/404.png'

export default {
  name: 'page404',
  data() {
    return {
      img_404,
      show: false
    }},
    methods: {
    goHome:function() {
      window.history.length > 1
        ? this.$router.go(-1)
        : this.$router.push('/')
    }
  },
  mounted() {
      this.show = !this.show;
  }
//   computed: {
//     message() {
//       return '特朗普说这个页面你不能进......'
//     }
//   }
}
</script>

<style>
.pic-404 {
    margin-top:5%;
    margin-left:10%;
    
}
.agileits_main_grid_right a,.agile_copy_right p a{
	transition:.5s ease-in;
	-webkit-transition:.5s ease-in;
	-moz-transition:.5s ease-in;
	-o-transition:.5s ease-in;
	-ms-transition:.5s ease-in;
}
.agileits_main_grid_right{
	float:right;
	margin-right: 20%;
}
.agileits_main_grid_right a{
	color: #212121;
    text-decoration: none;
    font-size: 1em;
    background:url(../source/images/img-sp.png) no-repeat -15px -99px;
    display: block;
    padding-left: 2em;
    text-transform: capitalize;
}
.agileits_main_grid_right a:hover{
	color:#409EFF;
	background:url(../source/images/img-sp.png) no-repeat -15px -134px;
}
.bounce-enter-active {
  animation: bounce-in .5s;
}
.bounce-leave-active {
  animation: bounce-in .5s reverse;
}
@keyframes bounce-in {
  0% {
    transform: scale(0);
  }
  50% {
    transform: scale(1.2);
  }
  100% {
    transform: scale(1);
  }
}
</style>
