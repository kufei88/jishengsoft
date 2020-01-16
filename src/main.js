import 'babel-polyfill'
import Vue from 'vue'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import App from './App.vue'
import Business from './components/business'
import VueRouter from 'vue-router';
import Home from './components/home.vue'
import Solution_1 from './components/solution_1.vue'
import Solution_2 from './components/solution_2.vue'
import Solution_3 from './components/solution_3.vue'
import Search from './components/search.vue'
import About from './components/about.vue'
import Download from './components/download.vue'
import Register from './components/register.vue'
import News from './components/news.vue'
import NewsList from './components/newsList.vue'
import Made from './components/made.vue'
import Made2 from './components/made2.vue'
import ErrorPage from './components/404.vue'
import CarRepair from './components/carRepair.vue'
import axios from 'axios'

require('es6-promise').polyfill()


Vue.use(ElementUI)
Vue.use(VueRouter)


const routes = [ //定义路由
  {
    path: '/business',
    component: Business
  },
  {
    path: '/carRepair',
    component: CarRepair
  },
  {
    path: '/solution_1',
    component: Solution_1
  },
  {
    path: '/solution_2',
    component: Solution_2
  },
  {
    path: '/solution_3',
    component: Solution_3
  },
  {
    path: '/search',
    component: Search
  },
  {
    path: '/about',
    component: About
  },
  {
    path: '/download',
    component: Download
  },
  {
    path: '/register',
    component: Register
  },
  {
    path: '/newsList',
    component: NewsList
  },
  {
    path: '/news',
    component: News
  },
  {
    path: '/made',
    component: Made
  },
  {
    path: '/made2',
    component: Made2
  },
  {
    path: '/home',
    component: Home
  },
  {
    path: '/',
    redirect: '/home'
  },
  {
    path: '/error',
    component: ErrorPage
  },
  {
    path: '*',
    redirect: '/error'
  },
  // { path: '/mainPage', component: MainPage,
  //   children:[
  //     {path: '/', component: Submit},
  //     {path: 'submit', component: Submit},
  //     {path: 'yuecai', component: Yuecai},
  //     {path: 'zhecai', component: Zhecai},
  //     {path: 'Chuan_sichuan', component: Chuan_sichuan},
  //     {path: 'Chuan_xiaochi', component: Chuan_xiaochi}
  //   ]
  // }
]

const router = new VueRouter({ //创建路由实例
  // mode: 'history',
  routes
})

router.beforeEach((to, from, next) => {
  if (to.matched.length === 0) { //如果未匹配到路由
    from.name ? next({
      name: from.name
    }) : next('/'); //如果上级也未匹配到路由则跳转登录页面，如果上级能匹配到则转上级路由
  } else {
    next(); //如果匹配到正确跳转
  }
});

router.afterEach((to, from, next) => {
  // setTimeout(window.scrollTo(0,0), 1000000);
  window.scrollTo(0, 0);
});

// const app = new Vue({
//   router
// }).$mount('#app')
new Vue({
  router: router,
  render: h => h(App)
}).$mount('#app')
// new Vue({
//   el: '#app',
//   router,
//   render: h => h(App)
// })
//  new Vue(Vue.util.extend({router}, App)).$mount('#app')
