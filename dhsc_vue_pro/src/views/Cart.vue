<template>
  <div>
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
        <div class="cart">购物车</div>
      </div>
    </div>

    <div class="check">
      全选/取消 <input type="checkbox" v-model="flag" @change="ch()" />
    </div>

    <div v-for="(details, i) in this.$store.state.list" :key="i" class="box">
      <div
        style="width: 375px; padding: 25px 0 0 20px;border-top: 1px solid #000; "
      >
        <span>
          操作
          <input
            style="margin-left: 285px"
            type="checkbox"
            :value="details.id"
            v-model="arr"
          />
        </span>
      </div>
      <div style="padding-left:20px">
        <div style="padding: 20px 0 20px 45px">商品图片</div>
        <div><img style="width: 148px" :src="details.carousel1" alt="" /></div>
      </div>
      <div>
        <div style="padding: 20px 0 20px 45px">
          商品价格:{{ details.price }}
        </div>
        <div style="padding: 20px 0 20px 45px">
          商品数量
          <button @click="jian(i)">-</button>
          {{ details.number }}
          <button @click="jia(i)">+</button>
        </div>
        <div style="padding: 20px 0 20px 45px">
          小计:{{ details.number * details.price }}
        </div>
        <div style="padding: 20px 0 20px 45px">
          <button style="padding: 10px" @click="del(i)">移除购物车</button>
        </div>
      </div>

      <div
        style="padding: 20px 0 20px 50px;overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"
      >
        商品名称:{{ details.title1 }}
      </div>
    </div>
    <div class="count">
      <p>总价为：{{ count }}</p>
    </div>

    <tabbar-cart></tabbar-cart>
  </div>
</template>

<script>
export default {
  data() {
    return {
      flag: false,
      arr: [],
    };
  },
  methods: {
    fh() {
      this.$router.go(-1);
    },
    jian(i) {
      this.$store.commit("jian", i);
    },
    jia(i) {
      this.$store.commit("jia", i);
    },
    del(i) {
      this.$store.commit("delete", i);
    },
    ch() {
      this.arr = [];
      if (this.flag) {
        this.$store.state.list.forEach((details) => {
          this.arr.push(details.id);
          console.log(details);
        });
      } else {
        this.arr = [];
      }
    },
  },
  watch: {
    arr(val) {
      if (val.length == this.$store.state.list.length) {
        this.flag = true;
      } else {
        this.flag = false;
      }
    },
  },
  computed: {
    count() {
      var sum = 0;
      for (var i in this.arr) {
        for (var j in this.$store.state.list) {
          if (this.arr[i] == this.$store.state.list[j].id) {
            sum +=
              this.$store.state.list[j].number *
              this.$store.state.list[j].price;
          }
        }
      }
      return sum;
    },
  },
};
</script>

<style scoped>
.count {
  margin-bottom: 80px;
}
.box {
  display: flex;
  flex: left;
  flex-wrap: wrap;
}

.check {
  padding: 15px;
}
.check input {
  margin-left: 255px;
}
.cart {
  display: inline;
  padding-left: 50px;
}
.logo {
  margin: 0 15px;
  margin-top: 10px;
}
.header {
  background-color: #fff;
  height: 50px;
}
</style>
