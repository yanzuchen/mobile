import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import MintUI from 'mint-ui'
import 'mint-ui/lib/style.min.css'
Vue.use(MintUI)

import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);

//全局组件
import Search from './components/Search.vue';
Vue.component("search",Search)
import Carousel from './components/Carousel.vue';
Vue.component("carousel",Carousel)
import MyLogin from './components/MyLogin'
Vue.component('my-login',MyLogin);
import FloorOne from './components/FloorOne'
Vue.component('floor-one',FloorOne);
import FloorTwo from './components/FloorTwo'
Vue.component('floor-two',FloorTwo);
import FloorThree from './components/FloorThree'
Vue.component('floor-three',FloorThree);

import FloorFoura from './components/FloorFoura.vue'
Vue.component('floor-foura',FloorFoura);
import FloorFourb from './components/FloorFourb.vue'
Vue.component('floor-fourb',FloorFourb);
import FloorFourc from './components/FloorFourc.vue'
Vue.component('floor-fourc',FloorFourc);
import FloorFourd from './components/FloorFourd.vue'
Vue.component('floor-fourd',FloorFourd);
import FloorFoure from './components/FloorFoure.vue'
Vue.component('floor-foure',FloorFoure);

import CarouselLista from './components/CarouselLista.vue'
Vue.component('carousel-lista',CarouselLista);
import CarouselListb from './components/CarouselListb.vue'
Vue.component('carousel-listb',CarouselListb);
import CarouselListc from './components/CarouselListc.vue'
Vue.component('carousel-listc',CarouselListc);
import CarouselListd from './components/CarouselListd.vue'
Vue.component('carousel-listd',CarouselListd);
import CarouselListe from './components/CarouselListe.vue'
Vue.component('carousel-liste',CarouselListe);

import Foot from './components/Foot.vue'
Vue.component('foot',Foot);

import Tabbar from './components/Tabbar.vue';
Vue.component("tabbar",Tabbar)
import TabbarMore from './components/TabbarMore.vue';
Vue.component("tabbar-more",TabbarMore)
import TabbarCart from './components/TabbarCart.vue';
Vue.component("tabbar-cart",TabbarCart)

import axios from 'axios';
axios.defaults.baseURL = 'http://127.0.0.1:5050';
Vue.prototype.axios = axios;

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
