<template>
  <div>
    <mt-tabbar v-model="tab" fixed>
      <mt-tab-item id="home">
        <img slot="icon" src="../assets/tabbar/2.png" v-if="tab!=='home'" />
        <img slot="icon" v-lazy="home" v-else-if="tab=='home'" @click="backtop()" />
        <span>{{top}}</span>
      </mt-tab-item>
      <mt-tab-item id="more">
        <img slot="icon" src="../assets/tabbar/4.png" v-if="tab!=='more'" />
        <img slot="icon" src="../assets/tabbar/3.png" v-else />
        <span>分类</span>
      </mt-tab-item>

      <mt-tab-item id="kefu">
        <img slot="icon" src="../assets/tabbar/6.png" v-if="tab!=='kefu'" />
        <img slot="icon" src="../assets/tabbar/5.png" v-else />
        <span>客服</span>
      </mt-tab-item>

      <mt-tab-item id="bao">
        <img slot="icon" src="../assets/tabbar/8.png" v-if="tab!=='bao'" />
        <img slot="icon" src="../assets/tabbar/7.png" v-else />
        <span>购物车</span>
      </mt-tab-item>

      <mt-tab-item id="my">
        <img slot="icon" src="../assets/tabbar/10.png" v-if="tab!=='my'" />
        <img slot="icon" src="../assets/tabbar/9.png" v-else />
        <span>我的</span>
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
export default {
  data() {
    return {
      tab: "bao",
      top: "首页",
      home: require("../assets/tabbar/1.png"),
    };
  },
  watch: {
    tab() {
      if (this.tab == "home") {
        this.$router.push("/");
      } else if (this.tab == "more") {
        this.$router.push("/classify/0");
      } else if (this.tab == "kefu") {
        this.$router.push("/register");
      } else if (this.tab == "bao") {
        this.$router.push("/cart");
      } else if (this.tab == "my") {
        this.$router.push("/login");
      }
    },
  },
};
</script>

<style scoped>
.top {
  margin: 0;
}
.mint-tabbar > .mint-tab-item.is-selected {
  color: #0084ff;
}
.mint-tab-item {
  color: #9fa3a6;
}
.mint-tabbar {
  height: 50px;
}
</style>