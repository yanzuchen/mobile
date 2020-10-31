<template>
  <div>
    <div class="header">
      <router-link to="/">
        <van-image
          class="logo"
          width="97"
          height="22"
          src="/images/header/logo.png"
        />
      </router-link>
      <van-search class="search" placeholder="华为 P40" v-model="value" />
    </div>

    <div class="cancel">
      <router-link to="/">
        <span v-show="cancel">取消</span>
      </router-link>
      <router-link to="">
        <span v-show="search" @click="searchProduct">搜索</span>
      </router-link>
    </div>
    <div class="hot">热门搜索</div>
    <div>
      <van-button class="button">旅行箱包</van-button>
      <van-button class="button">机模</van-button>
      <van-button class="button">Apple</van-button>
      <van-button class="button">座机</van-button>
      <van-button class="button">电风扇</van-button>
      <van-button class="button">笔记本</van-button>
      <van-button class="button">米面杂粮</van-button>
      <van-button class="button">宠物主粮</van-button>
      <van-button class="button">美妆</van-button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value: "",
      cancel: true,
      search: false,
      searchp: {}
    };
  },
  watch: {
    value() {
      if (this.value == "") {
        this.cancel = true;
        this.search = false;
      } else if (this.value !== "") {
        this.cancel = false;
        this.search = true;
      }
    },
  },
  methods: {
    searchProduct() {
      let value = this.value.trim();
      console.log(value);
      this.axios.get("/search?v=" + value).then((res) => {
        this.searchp = res.data.result
        this.$router.push("/details/" + this.searchp[0].family_id);
      });
    },
  },
};
</script>

<style scoped>
.header {
  background-color: #fff;
  height: 50px;
}

.button {
  border: 1px solid #ddd;
  margin-left: 20px;
  margin-bottom: 10px;
  font-size: 14px;
  height: 33px;
}
.hot {
  margin: 10px 0 15px 20px;
  font-size: 14px;
}
.cancel {
  width: 30px;
  height: 16px;
  font-size: 14px;
  color: #000;
  position: absolute;
  right: 10px;
  top: 15px;
}
.cancel span {
  color: #000;
}
.cancel > span:nth-child(2) {
  position: absolute;
  left: 0;
}

.search {
  display: inline-block;
  width: 200px !important;
  padding: 0px;
}

.logo {
  margin: 0 15px;
  margin-top: 10px;
}
</style>