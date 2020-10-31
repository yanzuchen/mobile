<template>
  <div class="all">
    <div class="title">
      <span>万里行会员注册</span>
    </div>
    <van-cell-group class="form">
      <van-field
        v-model="value1"
        name="phone"
        clearable
        placeholder="请输入手机号"
      />
      <van-field v-model="value2" clearable placeholder="请输入验证码1234" />
      <div class="code">
        <span class="line"></span>
        <span>获取验证码</span>
      </div>
      <van-field
        v-model="value3"
        type="password"
        name="upwd"
        clearable
        placeholder="请设置6~16位字母加数字组合密码"
      />
      <van-button :disabled="register" @click="regcheck" color="#FF594E"
        >注册</van-button
      >
    </van-cell-group>
    <img class="input" @click="check" v-lazy="checked" alt />
    <span class="useragree" @click="check">已阅读并同意</span>
    <span class="useragree1">《用户协议》</span>
    <router-link class="userreg1" to="/login"
      >已有账号，立即<span class="login">登录</span></router-link
    >
    <div class="tips" v-show="tipsbox">
      <img
        src="/images/reglog/error.png"
        alt
      />
      <p>{{ tips }}</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value1: "",
      value2: "",
      value3: "",
      checked:
        "/images/reglog/1.png",
      register: true,
      tips: "",
      tipsbox: false,
    };
  },
  watch: {
    tipsbox() {
      setTimeout(() => {
        if (this.tipsbox == true) {
          this.tipsbox = false;
        }
      }, 3000);
    },
  },
  methods: {
    check() {
      if (
        this.checked ==
        "/images/reglog/1.png"
      ) {
        this.checked =
          "/images/reglog/2.png";
      } else {
        this.checked =
          "/images/reglog/1.png";
      }
      if (this.register == true) {
        this.register = false;
      } else {
        this.register = true;
      }
    },
    regcheck() {
      if (this.tipsbox == false) {
        this.tipsbox = true;
        let regphone = /^1[3-9]\d{9}$/;
        if (this.value1 == "" || !regphone.test(this.value1)) {
          this.tips = "手机号格式不正确";
        }
        let regpwd = /^\w{6,16}$/;
        if (
          (this.value3 == "" || !regpwd.test(this.value3)) &&
          this.value1 !== "" &&
          regphone.test(this.value1)
        ) {
          this.tips = "密码格式不正确";
        } else if (this.value1 !== "" && regphone.test(this.value1)) {
          this.tipsbox = false;
          this.axios
            .post("/register", "phone=" + this.value1 + "&upwd=" + this.value3)
            .then((res) => {
              if (res.data.code == 0) {
                this.tipsbox = true;
                this.tips = "手机号已存在";
              } else {
                this.$router.push("/login");
              }
            });
        }
      }
    },
  },
};
</script>

<style scoped>
.login {
  text-decoration: underline;
}
.userreg1 {
  color: #999999;
  font-size: 12px;
  margin-left: 42px;
}
.all {
  height: 667px;
  background: #fff;
}
.tips p {
  text-align: center;
  font-family: PingFangSC-Regular;
  font-size: 12px;
  color: #fff;
  letter-spacing: 0.58px;
  line-height: 18px;
  padding-top: 8px;
}
.tips img {
  width: 36px;
  margin: 0 auto;
  height: 36px;
  margin-top: 29px;
  margin-left: 35px;
}
.tips {
  position: fixed;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  margin: auto;
  width: 120px;
  height: 120px;
  background: #3a3a3a;
  opacity: 0.9;
  border-radius: 4px;
  z-index: 999999;
  transition: all 0.3s;
  padding: 0 5px;
  box-sizing: border-box;
}
.useragree1 {
  color: #999999;
  font-size: 12px;
  text-decoration: underline;
}
.useragree {
  color: #999999;
  font-size: 12px;
}
.input {
  width: 14px;
  height: 14px;
  margin: 0px 0 0 30px;
  padding-right: 5px;
}
.van-button {
  width: 335px;
  height: 50px;
  margin-top: 50px;
  margin-left: 20px;
}
.line {
  font-size: 16px;
  position: absolute;
  right: 130px;
  width: 1px;
  height: 30px;
  background: #ccc;
  top: 37%;
  transform: translateY(-50%);
}
.code {
  box-sizing: border-box;
  float: left;
  width: 100px;
  height: 48px;
  line-height: 45px;
  border: 1px solid #999999;
  border-left: 0;
  font-size: 14px;
  color: #e50029;
  padding-left: 10px;
}
.form > .van-field:nth-child(2) {
  width: 233px;
  float: left;
  border-right: 0;
}
.form .van-field {
  box-sizing: border-box;
  width: 335px;
  height: 48px;
  line-height: 48px;
  font-size: 16px;
  border: 1px solid #999999;
  margin-bottom: 30px;
  margin-left: 22px;
  padding: 0 30px 0 15px;
}
.form {
  padding-top: 50px;
  width: 375px;
  height: 365px;
  font-size: 12px;
}
.title {
  box-sizing: border-box;
  width: 375px;
  line-height: 90px;
  font-size: 22px;
  text-align: center;
}
</style>