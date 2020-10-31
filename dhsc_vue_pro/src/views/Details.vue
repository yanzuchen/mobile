<template>
  <div>
    <div class="details">
      <div class="navbar">
        <router-link to="/classify/0">
          <img class="back" src="/images/details/1.png" alt />
        </router-link>
        <img class="collect" v-lazy="love" alt @click="changelove" />
      </div>
      <van-swipe class="my-swipe" indicator-color="#aaa">
        <van-swipe-item>
          <img v-lazy="details.carousel1" />
        </van-swipe-item>
        <van-swipe-item>
          <img v-lazy="details.carousel2" />
        </van-swipe-item>
        <van-swipe-item>
          <img v-lazy="details.carousel3" />
        </van-swipe-item>
      </van-swipe>
      <div class="title">
        <p>{{ details.title1 }}</p>
        <p>{{ details.title2 }}</p>
      </div>
      <div class="price">
        <span>¥{{ details.price }}</span>
      </div>
    </div>
    <div class="product_list">
      <p>最多可奖励<span>250</span>积分</p>
    </div>
    <div class="score">
      <p>开通积分加速包，享更多积分奖励</p>
      <p class="openBtn">立即开通</p>
    </div>
    <div class="am-list-item">
      <div class="am-list-content">已选</div>
      <div class="am-list-extra">银色 24寸</div>
    </div>
    <div class="images">
      <img src="/images/details/4.jpg" />
      <img src="/images/details/5.jpg" />
      <img src="/images/details/6.jpg" />
      <img src="/images/details/7.jpg" />
      <img src="/images/details/8.jpg" />
      <img src="/images/details/9.jpg" />
    </div>
    <div>
      <mt-tabbar class="tabbar">
        <div class="left">
          <ul>
            <router-link to>
              <li>
                <img src="/images/details/2.png" alt />
                <p>购物车</p>
                <span class="cart" v-show="showcart">{{ cart }}</span>
              </li>
            </router-link>
          </ul>
        </div>
        <div class="right">
          <button @click="join(details)">加入购物车</button>
          <button>立即购买</button>
        </div>
      </mt-tabbar>
    </div>
  </div>
</template>

<script>
import {Toast} from 'vant';
export default {
  data() {
    return {
      love: "/images/details/3.png",
      num: 1,
      cart: 1,
      showcart: false,
      details: [],
    };
  },
  methods: {
    changelove() {
      if (this.love == "/images/details/3.png") {
        this.love = "/images/details/4.png";
      } else {
        this.love = "/images/details/3.png";
      }
    },
    join(details) {
      if (this.showcart == false) {
        this.showcart = true;
      }
      Toast.success('加入成功');
           setTimeout(()=>{
               this.$router.push("/cart")
           },1500)
           this.$store.commit("add",details)
    },
  },
  mounted() {
    let fid = this.$route.params.fid;
    this.axios.get("/details?fid=" + fid).then((res) => {
      this.details = res.data.result;
      let price = this.details.price;
      this.details.price = price;
    });
  },
  watch: {
    num() {
      this.cart = this.num;
    },
  },
};
</script>

<style scoped>
.images img {
  width: 355px;
  margin-bottom: 10px;
}
.images {
  padding: 5px 10px 65px;
}
.am-list-extra {
  margin-top: 11px;
  margin-left: 200px;
}
.am-list-content {
  margin-top: 12px;
  margin-left: 20px;
}
.am-list-item {
  margin-top: 20px;
  height: 50px;
  background-color: #fff;
  display: flex;
}
.score {
  margin-top: 22px;
  background-color: #fff;
  padding: 18px;
}
.score p {
  display: inline;
}
.openBtn {
  border: 1px solid red;
  float: right;
  padding: 5px;
  margin-top: -6px;
}
.product_list span {
  color: #ec6735;
}
.product_list {
  display: block;
  padding: 5px;
  font-size: 18px;
  height: 50px;
  margin-top: 20px;
  background: #fff;
}
.right > button:nth-child(2) {
  width: 105px;
  height: 56px;
  background: #007cfc;
  font-size: 14px;
  border: 0;
  color: #fff;
}
.right > button:nth-child(1) {
  width: 105px;
  height: 56px;
  opacity: 0.43;
  background: #007cfc;
  font-size: 14px;
  border: 0;
  color: #fff;
  margin-left: 5px;
}
.cart {
  width: 14px;
  height: 14px;
  text-align: center;
  line-height: 14px;
  border-radius: 50%;
  font-size: 10px;
  color: #fff;
  position: absolute;
  left: 40px;
  top: 5px;
  background: #ec1c23;
}
.left img {
  width: 18px;
  height: 18px;
}
.left ul {
  width: 140px;
  font-size: 12px;
  margin-top: 10px;
  margin-left: 15px;
  display: flex;
  justify-content: space-between;
}
.left p {
  margin: 0;
  padding: 0;
  color: #999;
}
.person > img {
  width: 35px;
  height: 35px;
}
.person {
  margin-top: 20px;
}
.tabbar {
  height: 56px;
  position: fixed;
}
.review {
  display: flex;
  justify-content: space-between;
}
.review > span:nth-child(2) {
  color: #999;
}
.floor2 {
  box-sizing: border-box;
  width: 375px;
  height: 166px;
  background-color: #fff;
  margin-top: 20px;
  margin-bottom: 56px;
  font-size: 14px;
  padding: 20px 10px 0 10px;
}
.shouxu {
  color: #999;
}
.fenqi span {
  height: 43px;
  width: 102px;
  margin-right: 13px;
  text-align: center;
  border: 1px solid #ddd;
}
.fenqi {
  margin-top: 15px;
  display: flex;
}
.huabei > span:nth-child(2) {
  color: #999;
  margin-left: 10px;
}
.floor2 {
  box-sizing: border-box;
  width: 375px;
  height: 100px;
  background-color: #fff;
  padding: 14.5px 0 10px 14.5px;
  margin-top: 20px;
  font-size: 14px;
}
.details {
  background-color: #fff;
}
.select > button:nth-child(3) {
  border-left: 0;
  border-top-right-radius: 13px;
  border-bottom-right-radius: 13px;
}
.select > button:nth-child(1) {
  border-right: 0;
  border-top-left-radius: 13px;
  border-bottom-left-radius: 13px;
}
.price button {
  width: 30px;
  height: 26px;
  border: 1px solid #999;
  background-color: #fff;
  color: #999;
  padding-top: 0;
  font-size: 20px;
}
.price input {
  width: 36px;
  height: 22px;
  text-align: center;
  border: 0;
  padding: 2px 0 0 0;
  border-top: 1px solid #999;
  border-bottom: 1px solid #999;
}
.price > span:nth-child(3) {
  font-size: 12px;
  color: #666;
}
.price > span:nth-child(1) {
  font-size: 25px;
  color: #ff6800;
}
.price {
  box-sizing: border-box;
  margin: 0px 20px 0 20px;
  padding-bottom: 20px;
  display: flex;
  justify-content: space-between;
}
.title > p:nth-child(2) {
  color: #999;
  font-family: "Microsoft YaHei";
  font-size: 16px;
  margin-left: 10px;
}
.title > p:nth-child(1) {
  font-size: 20px;
  color: #333;
  font-family: "Microsoft YaHei";
  margin-bottom: 0;
}
.title {
  margin-left: 10px;
}
.back {
  padding: 10px 0 0 20px;
}
.collect {
  padding: 10px 20px 0 0;
}
.navbar img {
  width: 32px;
  height: 32px;
}
.navbar {
  width: 375px;
  height: 45px;
  display: flex;
  justify-content: space-between;
  position: fixed;
  z-index: 99;
}
.my-swipe img {
  width: 375px;
  height: 375px;
}
</style>