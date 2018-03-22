import Vue from 'vue'
import Vuex from 'vuex'


Vue.use(Vuex);

//Create cart table, return value from cart as to how many there are

const state = {
    cart: {}
}

const getters = {
    CURRENT_CART: (state) => {
        // console.log("TASKS: ", state.tasks.filter(task => task.day === state.user.current_day));
        return state.cart;
    }
}

const mutations = {
    GET_CART: (state) => {
        axios.get('/user').then(response => state.user = response.data);
    },    
}

export default new Vuex.Store({
    state,
    getters,
    mutations,
    actions
})

