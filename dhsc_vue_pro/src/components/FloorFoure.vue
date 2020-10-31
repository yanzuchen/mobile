<template>
  <div>
    <div class="dhselection">
      <h3>{{indexadc.title}}</h3>
      <div class="img_div">
        <img
          :src="indexadc.src"
          alt=""
        />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      indexadc: {},
    };
  },
  mounted() {
    this.axios.get("/indexfloorc").then((res) => {
      this.indexadc = res.data.result[4];
    });
  },
};
</script>

<style scoped>
.dhselection {
  width: 100%;
  background: #fff;
  margin-top: 15px;
}

.dhselection h3 {
  width: 345px;
  height: 54px;
  margin: 0 auto;
  font-size: 17px;
  box-sizing: border-box;
  color: #333;
  line-height: 54px;
  text-align: center;
  font-weight: normal;
}

.img_div {
  border-top: 1px solid #9e9e9e;
  margin-right: 10px;
  margin-left: 10px;
  width: 345px;
  height: 160px;
}
.dhselection img {
  padding-top: 10px;
  width: 345px;
  height: 160px;
}
</style>