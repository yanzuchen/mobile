<template>
  <div>
    <div class="dhselection">
      <h3>每月甄选</h3>
      <ul class="selectionList">
        <li v-for="(v,i) of indexfloorb" :key="i">
          <router-link to="">
            <div>
              <div>{{v.title}}</div>
              <span>{{v.ftitle}}</span>
              <img :src="v.src"
                alt=""
              />
            </div>
          </router-link>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      indexfloorb: [],
    };
  },
  mounted() {
    this.axios.get("/indexfloorb").then((res) => {
      this.indexfloorb = res.data.result;
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

.dhselection .selectionList {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;
  align-content: stretch;
  margin-top: 0;
}

.dhselection .selectionList li:nth-child(1) {
  border-right: 0.5px solid #e5e5e5;
}

.dhselection .selectionList li:nth-child(3) {
  border-right: 0.5px solid #e5e5e5;
}

.dhselection .selectionList li {
  border-top: 0.5px solid #e5e5e5;
  width: 50%;
  padding: 20px 0;
  padding-left: 15px;
  box-sizing: border-box;
  font-size: 0.373333rem;
}

.dhselection .selectionList li > a > div > div {
  font-size: 20px;
  color: #000;
  padding-bottom: 10px;
}

.dhselection .selectionList li > a > div > span {
  font-size: 18px;
  color: #999;
}
.dhselection .selectionList li img {
  width: 49.98px;
  height: 49.98px;
  margin-left: 97px;
}
</style>