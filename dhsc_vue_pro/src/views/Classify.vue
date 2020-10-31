<template>
  <div>
    <van-sidebar class="sidebar" v-model="active">
      <van-sidebar-item :class="{ blue: blue0 }" title="旅行清单" />
      <van-sidebar-item :class="{ blue: blue1 }" title="东航好物" />
      <van-sidebar-item :class="{ blue: blue2 }" title="手机" />
      <van-sidebar-item :class="{ blue: blue3 }" title="数码" />
      <van-sidebar-item :class="{ blue: blue4 }" title="电器" />
      <van-sidebar-item :class="{ blue: blue5 }" title="电脑" />
      <van-sidebar-item :class="{ blue: blue6 }" title="食品" />
      <van-sidebar-item :class="{ blue: blue7 }" title="家居" />
      <van-sidebar-item :class="{ blue: blue8 }" title="美妆" />
    </van-sidebar>
    <div class="classify" v-if="active == 0">
      <router-link :to="this.url0">
        <div
          v-for="(classify, index) of classifya"
          :key="index"
          class="classdetails"
        >
          <img v-lazy="classify.src" alt />
          <div>{{ classify.title }}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="active == 1">
      <router-link :to="this.url1">
        <div
          v-for="(classify, index) of classifyb"
          :key="index"
          class="classdetails"
        >
          <img v-lazy="classify.src" alt />
          <div>{{ classify.title }}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="active == 2">
      <router-link :to="this.url2">
        <div
          v-for="(classify, index) of classifyc"
          :key="index"
          class="classdetails"
        >
          <img v-lazy="classify.src" alt />
          <div>{{ classify.title }}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="active == 3">
      <router-link :to="this.url3">
        <div
          v-for="(classify, index) of classifyd"
          :key="index"
          class="classdetails"
        >
          <img v-lazy="classify.src" alt />
          <div>{{ classify.title }}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="active == 4">
      <router-link :to="this.url4">
        <div
          v-for="(classify, index) of classifye"
          :key="index"
          class="classdetails"
        >
          <img v-lazy="classify.src" alt />
          <div>{{ classify.title }}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="active == 5">
      <router-link :to="this.url5">
        <div
          v-for="(classify, index) of classifyf"
          :key="index"
          class="classdetails"
        >
          <img v-lazy="classify.src" alt />
          <div>{{ classify.title }}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="active == 6">
      <router-link :to="this.url6">
        <div
          v-for="(classify, index) of classifyg"
          :key="index"
          class="classdetails"
        >
          <img v-lazy="classify.src" alt />
          <div>{{ classify.title }}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="active == 7">
      <router-link :to="this.url7">
        <div
          v-for="(classify, index) of classifyh"
          :key="index"
          class="classdetails"
        >
          <img v-lazy="classify.src" alt />
          <div>{{ classify.title }}</div>
        </div>
      </router-link>
    </div>
        <div class="classify" v-else-if="active == 8">
      <router-link :to="this.url8">
        <div
          v-for="(classify, index) of classifyi"
          :key="index"
          class="classdetails"
        >
          <img v-lazy="classify.src" alt />
          <div>{{ classify.title }}</div>
        </div>
      </router-link>
    </div>
    <tabbar-more></tabbar-more>
  </div>
</template>

<script>
export default {
  data() {
    return {
      active: 0,
      blue0: true,
      blue1: false,
      blue2: false,
      blue3: false,
      blue4: false,
      blue5: false,
      blue6: false,
      blue7: false,
      blue8: false,
      classifya: [],
      classifyb: [],
      classifyc: [],
      classifyd: [],
      classifye: [],
      classifyf: [],
      classifyg: [],
      classifyh: [],
      classifyi: [],
      url0: "",
      url1: "",
      url2: "",
      url3: "",
      url4: "",
      url5: "",
      url6: "",
      url7: "",
      url8: "",
    };
  },
  mounted() {
    let fid = this.$route.params.fid;
    this.active = fid;
    this.axios.get("/classifya").then((res) => {
      this.classifya = res.data.result;
      this.url0 = "/details/" + this.classifya[0].family_id;
    });
    this.axios.get("/classifyb").then((res) => {
      this.classifyb = res.data.result;
      this.url1 = "/details/" + this.classifyb[0].family_id;
    });
    this.axios.get("/classifyc").then((res) => {
      this.classifyc = res.data.result;
      this.url2 = "/details/" + this.classifyc[0].family_id;
    });
    this.axios.get("/classifyd").then((res) => {
      this.classifyd = res.data.result;
      this.url3 = "/details/" + this.classifyd[0].family_id;
    });
    this.axios.get("/classifye").then((res) => {
      this.classifye = res.data.result;
      this.url4 = "/details/" + this.classifye[0].family_id;
    });
    this.axios.get("/classifyf").then((res) => {
      this.classifyf = res.data.result;
      this.url5 = "/details/" + this.classifyf[0].family_id;
    });
    this.axios.get("/classifyg").then((res) => {
      this.classifyg = res.data.result;
      this.url6 = "/details/" + this.classifyg[0].family_id;
    });
    this.axios.get("/classifyh").then((res) => {
      this.classifyh = res.data.result;
      this.url7 = "/details/" + this.classifyh[0].family_id;
    });
    this.axios.get("/classifyi").then((res) => {
      this.classifyi = res.data.result;
      this.url8 = "/details/" + this.classifyi[0].family_id;
    });
  },
  watch: {
    active() {
      if (this.active == 0) {
        this.blue0 = true;
        this.blue1 = false;
        this.blue2 = false;
        this.blue3 = false;
        this.blue4 = false;
        this.blue5 = false;
        this.blue6 = false;
        this.blue7 = false;
        this.blue8 = false;
      } else if (this.active == 1) {
        this.blue0 = false;
        this.blue1 = true;
        this.blue2 = false;
        this.blue3 = false;
        this.blue4 = false;
        this.blue5 = false;
        this.blue6 = false;
        this.blue7 = false;
        this.blue8 = false;
      } else if (this.active == 2) {
        this.blue0 = false;
        this.blue1 = false;
        this.blue2 = true;
        this.blue3 = false;
        this.blue4 = false;
        this.blue5 = false;
        this.blue6 = false;
        this.blue7 = false;
        this.blue8 = false;
      } else if (this.active == 3) {
        this.blue0 = false;
        this.blue1 = false;
        this.blue2 = false;
        this.blue3 = true;
        this.blue4 = false;
        this.blue5 = false;
        this.blue6 = false;
        this.blue7 = false;
        this.blue8 = false;
      } else if (this.active == 4) {
        this.blue0 = false;
        this.blue1 = false;
        this.blue2 = false;
        this.blue3 = false;
        this.blue4 = true;
        this.blue5 = false;
        this.blue6 = false;
        this.blue7 = false;
        this.blue8 = false;
      } else if (this.active == 5) {
        this.blue0 = false;
        this.blue1 = false;
        this.blue2 = false;
        this.blue3 = false;
        this.blue4 = false;
        this.blue5 = true;
        this.blue6 = false;
        this.blue7 = false;
        this.blue8 = false;
      } else if (this.active == 6) {
        this.blue0 = false;
        this.blue1 = false;
        this.blue2 = false;
        this.blue3 = false;
        this.blue4 = false;
        this.blue5 = false;
        this.blue6 = true;
        this.blue7 = false;
        this.blue8 = false;
      } else if (this.active == 7) {
        this.blue0 = false;
        this.blue1 = false;
        this.blue2 = false;
        this.blue3 = false;
        this.blue4 = false;
        this.blue5 = false;
        this.blue6 = false;
        this.blue7 = true;
        this.blue8 = false;
      } else if (this.active == 8) {
        this.blue0 = false;
        this.blue1 = false;
        this.blue2 = false;
        this.blue3 = false;
        this.blue4 = false;
        this.blue5 = false;
        this.blue6 = false;
        this.blue7 = false;
        this.blue8 = true;
      }
    },
  },
};
</script>

<style scoped>
.blue {
  color: #0084ff;
}
.classdetails > div:nth-child(3) {
  color: #ec232b;
  font-weight: bold;
  margin: 10px 0 10px 10px;
}
.classdetails > div:nth-child(2) {
  margin-top: 10px;
  margin-bottom: 10px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 14px;
  color: #bbb;
  margin-left: 37px;
}
.classdetails img {
  width: 100px;
  height: 100px;
  padding-left: 10px;
  padding-top: 30px;
  padding-bottom: 10px;
}
.classdetails {
  width: 125.5px;
  font-size: 14px;
  float: left;
  margin-left: 10px;
}
.classify {
  margin-bottom: 70px;
  background-color: #fff;
  position: absolute;
  left: 95px;
}
.sidebar {
  width: 95px;
  height: 100%;
  position: fixed;
  background-color: #f7f8fa;
}
.van-sidebar-item--select::before {
  position: absolute;
  top: 50%;
  left: 0;
  width: 2px;
  height: 60px;
  background-color: #0084ff;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  content: "";
}
</style>