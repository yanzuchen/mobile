<template>
  <div class="classify">
    <div class="carouse">
      <swiper ref="mySwiper" :options="swiperOptions" class="swiper">
        <swiper-slide v-for="(v, k) of indexcs" :key="k">
          <router-link to="/">
            <img :src="v.src" />
            <p>{{v.title}}</p>
          </router-link>
        </swiper-slide>
      </swiper>
    </div>
  </div>
</template>

<script>
import { Swiper, SwiperSlide, directive } from "vue-awesome-swiper";
import "swiper/css/swiper.css";
export default {
  components: {
    Swiper,
    SwiperSlide,
  },
  data() {
    return {
      indexcs:[],
      swiperOptions: {
        pagination: {
          el: ".swiper-pagination",
        },
        slidesPerView: 2.5,
        paginationClickable: true,
        spaceBetween: 15,
      },
    };
  },
  mounted() {
    this.axios.get("/indexcs").then((res) => {
      this.indexcs = res.data.result.slice(0,10);
    });
  },
};
</script>
<style scoped>
p {
  display: block;
  margin: 0;
  padding: 0;
  font-size: 0.32rem;
  color: #333;
  height: 0.44rem;
  line-height: 0.44rem;
  position: absolute;
  top: 115px;
  left: 40px;
}
.classify {
  background-color: #fff;
}
.swiper-container {
  margin-top: 20px;
}

.carouse{
  position: relative;
}
.carouse img {
  width: 90%;
  margin: 5px 4px;
  padding-right: 10px;

  border-radius: 15px;
}

.carouse .swiper >>> .swiper-pagination-bullet {
  background-color: black;
  width: 15px;
  height: 15px;
}

.carouse .swiper-container-free-mode > .swiper-wrapper {
  transition-timing-function: ease-out;
  margin: 0 auto;
}
</style>