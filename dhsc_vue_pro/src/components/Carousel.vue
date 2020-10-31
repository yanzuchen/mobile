<template>
  <div>
    <van-swipe class="my-swipe" :autoplay="3000" :show-indicators="false">
      <van-swipe-item v-for="(img, index) of carousel" :key="index">
        <img v-lazy="img.src" />
      </van-swipe-item>
    </van-swipe>
  </div>
</template>

<script>
export default {
  data() {
    return {
      carousel: [],
    };
  },
  mounted() {
    this.axios.get("/carousel").then((res) => {
      this.carousel = res.data.result;
    });
  },
};
</script>

<style scoped>
.my-swipe .van-swipe-item {
  height: 195px;
}
img {
  width: 375px;
  height: 195px;
}
</style>