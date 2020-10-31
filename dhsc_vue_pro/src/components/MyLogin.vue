<template>
  <div class="mylogin">
    <mt-header>
      <div slot="left">
        <img src="../assets/login/person2.png" alt="" />
        <span>未登录</span>
      </div>
      <div slot="right" v-if="this.$store.state.isLogined == 0">
        <router-link to="/login"> 立即登录 </router-link>
      </div>
      <div style="color:#000;" slot="right" v-else>
        欢迎，{{ this.$store.state.phone }},
        <mt-button style="color:blue" type="primary" @click="logout">注销</mt-button>
      </div>
    </mt-header>
  </div>
</template>
<script>
export default {
  methods: {
    // 用户注销
    logout() {
      this.$store.commit("logout");
    },
  },
};
</script>
<style scoped>
.mint-header {
  background-color: #fff;
  border-bottom: 1px solid;
}

.mint-header img {
  padding-left: 20px;
  width: 10px;
  margin-right: 5px;
}

.mint-header span {
  font-size: 12px;
  color: #000;
  margin-top: 5px;
}

a {
  font-size: 12px;
  text-decoration: none;
  padding-right: 25px;
  color: #0084ff;
}
</style>