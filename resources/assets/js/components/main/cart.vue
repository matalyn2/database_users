<template>
    <div class="container" id="cart">
    <br><br>
        <div v-if="this.checkout" class="alert alert-success">
            <strong>Success!</strong> You rental is scheudled.
        </div>
     <div class="kittens-inner col-lg-4"
                v-for="kitten in this.cart"
                 :id="kitten.id">
            <img height="150px" width="125px" :src="kitten.photos">
            <br>
            <span id="name"><b>Name:</b> {{kitten.name}}</span><br>
            <span id="age"><b>Age:</b> {{kitten.age}}</span><br>
            <span id="history"><b>History:</b> {{kitten.history}}</span><br>
            <span id="fertility"><b>Fertile:</b> {{kitten.fertility}}</span>
            <br>
            <span id="adopted"><b>Adopted:</b>{{kitten.adopted}}</span>
            <hr/>
        </div><br>
        <button v-on:click="this.clearCart" class="btn btn-primary">Empty Cart</button>
        <button v-on:click="this.checkoutAlert" class="btn btn-success">Checkout</button>

    

    </div>
</template>

<script>

    export default {
        mounted() {
            console.log('Component mounted!!!')
        },
        props:['cart'],
        data: function(){
            return{
                checkout: false
            }
        },
        components: {
        },
        methods:{
            checkoutAlert: function(){
                this.checkout = true;
                this.clearCart();
            },
            clearCart: function(user_id, kitten_id){
                axios
                    .post(
                        "/wiki",
                        {
                            user_id: this.cart[0].user_id
                        }
                    )
                    .then(r => console.log(r))
            .catch(e => console.log(e));
            window.location.reload(true);
            }
        }
    }
</script>

<style scoped>
    #home{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-evenly;
    }
</style>