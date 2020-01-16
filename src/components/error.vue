<template>
  <div class="main" id="body">
		<div class="agileits_main_grid">
			<div class="agileits_main_grid_left">
				<h1>&nbsp;&nbsp;抱歉，您所访问的页面不存在！</h1>
			</div>
			<div class="agileits_main_grid_right">
				<a href="#" @click="goHome">返回上一页</a>
			</div>
		</div>
		<div class="w3l_main_grid">
			<img src="../source/images/1.png" />
		</div>
</div>
</template>

<script>
export default {
  methods: {
    goHome:function() {
      window.history.length > 1
        ? this.$router.go(-1)
        : this.$router.push('/')
    }
  }
}
</script>

<style>
#app {
  font-family: Helvetica, sans-serif;
  text-align: center;
}

/* html,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;} */
ol,ul{list-style:none;margin:0px;padding:0px;}
blockquote,q{quotes:none;}
blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
/* table{border-collapse:collapse;border-spacing:0;} */
/* start editing from here */
a{text-decoration:none;}
.txt-rt{text-align:right;}/* text align right */
.txt-lt{text-align:left;}/* text align left */
.txt-center{text-align:center;}/* text align center */
.float-rt{float:right;}/* float right */
.float-lt{float:left;}/* float left */
.clear{clear:both;}/* clear float */
.pos-relative{position:relative;}/* Position Relative */
.pos-absolute{position:absolute;}/* Position Absolute */
.vertical-base{	vertical-align:baseline;}/* vertical align baseline */
.vertical-top{	vertical-align:top;}/* vertical align top */
nav.vertical ul li{	display:block;}/* vertical menu */
nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
img{max-width:100%;}
/*end reset*/
/* html, body{
    font-size: 100%;
	font-family: 'Raleway', sans-serif;
}
h1,h2,h3,h4,h5,h6,a,p{
	font-family: 'Raleway', sans-serif;
	margin:0;
}
ul,label{
	margin:0;
	padding:0;
}
body a:hover,body a{
	text-decoration:none;
} */
#body{
	background:url(../source/images/banner.jpg) 49% 0px;

}
/*-- main --*/
.agileits_main_grid_right a,.agile_copy_right p a{
	transition:.5s ease-in;
	-webkit-transition:.5s ease-in;
	-moz-transition:.5s ease-in;
	-o-transition:.5s ease-in;
	-ms-transition:.5s ease-in;
}
.main{
	padding:4em 0 3em;
	width:80%;
	margin:0 auto;
}
.agileits_main_grid_left{
	float:left;
}
.agileits_main_grid_left h1{
	font-size: 2em;
  color: #fff;
}
.agileits_main_grid_right{
	float:right;
	margin: 1.2em 0 0;
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
.w3l_main_grid{
	text-align:center;
	margin:6em 0;
}
.w3l_main_grid img {
    width:35%;
}

/*-- //main --*/
/*-- start-responsive-design --*/

</style>