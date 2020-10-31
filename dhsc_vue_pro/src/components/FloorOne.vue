<template>
  <div>
    <div
      style="border-top: 2px solid #e5e5e5; width: 345px; margin: 0px 15px"
    ></div>
    <ul class="nav">
      <li v-for="(icon,i) of icons" :key="i">
        <router-link to="">
          <div>
            <img :src=icon.src />
            <p>{{icon.title}}</p>
          </div>
        </router-link>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      icons: [],
    };
  },
  mounted() {
    this.axios.get("/icons").then((res) => {
      this.icons = res.data.result;
    });
  },
};
</script>

<style scoped>
.nav {
  background: #fff;
  padding: 34.5px 0 12px;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: center;
  box-sizing: border-box;
}

ul,
li {
  list-style: none;
}

.nav li {
  width: 20%;
  margin-bottom: 8.5px;
  text-align: center;
}

.nav li a img {
  display: block;
  margin: 0 auto 7.5px;
  width: 49.98px;
  height: 49.98px;
  text-align: center;
}

img {
  border-style: none;
}

a,
a:active,
a:hover,
a:link,
a:visited {
  color: #000;
  text-decoration: none;
}

.nav li a p {
  height: 15px;
  line-height: 0.4rem;
  font-size: 0.293333rem;
  color: #333;
  text-align: center;
}
</style>