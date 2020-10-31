import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'
import Search from '../views/Search.vue'
import Classify from '../views/Classify.vue'
import Details from '../views/Details.vue'
import Register from '../views/Register.vue'
import Login from '../views/Login.vue'
import Cart from '../views/Cart.vue'


Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    component: Index
  },
  {
    path: '/search',
    component: Search
  },
  {
    path: '/classify/:fid',
    component: Classify
  },
  {
    path: '/details/:fid',
    component: Details
  },
  {
    path: '/register',
    component: Register
  },
  {
    path: '/login',
    component: Login
  },
  {
    path: '/cart',
    component: Cart
  },
]

const router = new VueRouter({
  mode: 'history',
  routes
})

export default router
