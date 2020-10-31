import Vue from "vue";
import vuex from "vuex";
import axios from 'axios';
import qs from 'qs';
import router from '../router';

Vue.use(vuex);

var store = new vuex.Store({
    state: {
        //标识用户是否已经登录
        isLogined: localStorage.getItem('isLogined') ? localStorage.getItem('isLogined') : 0,
        phone: localStorage.getItem('phone') ? localStorage.getItem('phone') : '',

        //    变量
        list: JSON.parse(localStorage.getItem("list")) || []
    },
    mutations: {
        logined(state, payload) {
            state.isLogined = 1;
            state.phone = payload.phone;
            localStorage.setItem('phone', payload.phone);
        },
        logout(state) {
            state.isLogined = 0;
            state.phone = '';
            localStorage.removeItem('isLogined');
        },
        //    方法
        add(state, details) {
            var obj = {
                id: details.id,
                title1: details.title1,
                carousel1: details.carousel1,
                price: details.price,
                number: 1
            }
            var index = state.list.findIndex((v) => {
                return details.id == v.id
            })
            if (index == -1) {
                state.list.push(obj)
                localStorage.setItem("list", JSON.stringify(state.list))
            }
            else {
                state.list[index].number++;
                localStorage.setItem("list", JSON.stringify(state.list))
            }
        },
        jian(state, i) {
            state.list[i].number--;
            localStorage.setItem("list", JSON.stringify(state.list))
            if (state.list[i].number <= 0) {
                if (confirm("是否移除购物车")) {
                    state.list.splice(i, 1)
                    localStorage.setItem("list", JSON.stringify(state.list))
                }
                else {
                    state.list[i].number = 1
                    localStorage.setItem("list", JSON.stringify(state.list))
                }
            }
        },
        jia(state, i) {
            state.list[i].number++;
            localStorage.setItem("list", JSON.stringify(state.list))
        },
        delete(state, i) {
            state.list.splice(i, 1);
            localStorage.setItem("list", JSON.stringify(state.list))
        }
    },
    getters: {
        //    计算

    },
    actions: {
        //    异步
        mlogin(context, payload) {
            //发送异步请求
            axios.post('/mlogin', qs.stringify(payload)).then(res => {
                //用户登录成功
                if (res.data.code == 1) {
                    //提交Mutations
                    context.commit('logined', res.data.info);
                    localStorage.setItem('isLogined', '1');
                    router.push('/');
                } else {
                    //this.$messagebox("登录提示","用户名或密码错误");
                    //window.alert('用户登录失败');
                }
            });
        },

        // nmlogin(context, payload) {
        //     //发送异步请求
        //     axios.post('/nmlogin', qs.stringify(payload)).then(res => {
        //         //用户登录成功
        //         if (res.data.code == 1) {
        //             //提交Mutations
        //             context.commit('logined', res.data.info);
        //             localStorage.setItem('isLogined', '1');
        //             router.push('/');
        //         } else {
        //             //this.$messagebox("登录提示","用户名或密码错误");
        //             //window.alert('用户登录失败');
        //         }
        //     });
        // }
    }
})
export default store