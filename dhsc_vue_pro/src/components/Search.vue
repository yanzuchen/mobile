<template>
  <div class="header">
    <router-link to>
      <van-image
        class="logo"
        width="97"
        height="22"
        src="/images/header/logo.png"
      />
    </router-link>
    <router-link to="/search">
      <van-search
        class="search"
        placeholder="华为 P40"
      />
    </router-link>
  </div>
</template>

<style scoped>
.header{
  background-color: #fff;
  height: 50px;
}

.search {
  display: inline-block;
  width: 230px !important;
  padding: 0px;
}

.logo {
  margin: 0 15px;
  margin-top: 10px;
}
</style>