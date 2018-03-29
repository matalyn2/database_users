<template>
    <div class="container">
        <div class="row">
            <div v-if="inCart" class="alert alert-danger alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
              <strong>Sorry!</strong> This kitten is already in your cart!
            </div>
            <div id="home">
                <button class="btn btn-default" v-on:click="toggleAdoptionInfo">See Your Adoption Information</button>
                <button class="btn btn-default" v-on:click="toggleCats">See Available Kittens</button>
                <button  class="btn btn-default" v-on:click="toggleCart">See Cart</button>
            </div>
                <cart v-if="seeCart" :cart="this.cart"></cart>
                <kittens v-if="seeCats" v-on:addToCart="cartEvent" :kittens="this.kittens"></kittens>
                <owners v-if="seeAdoptionInfo" :self="this.self" :owners="this.owners"></owners>

        </div>
    </div>
</template>

<script>
    import owners from './owners.vue'
    import kittens from './kittens.vue'
    import cart from './cart.vue'

    export default {
        mounted() {
            console.log('Component mounted.')
        },
        data: function(){
          return{
              seeCats: false,
              seeAdoptionInfo: false,
              seeCart: false,
              inCart: false
          }
        },
        props:['kittens', 'owners', 'self', 'cart'],
        components: {
            'owners': owners,
            'kittens': kittens,
            'cart': cart,
        },
        methods:{
            toggleCats: function(){
                this.seeCats = !this.seeCats;
            },
            toggleCart: function(){
                this.seeCart = !this.seeCart;
            },
            toggleAdoptionInfo: function(){
                this.seeAdoptionInfo = !this.seeAdoptionInfo;
            },
            cartEvent: function(kittenId){
                let count = this.cart.filter((cartItem) => {
                    if(kittenId == cartItem.kitten_id){
                        return cartItem;
                    }
                })
                if(count.length == 0){
                    axios
                        .post(
                            "/wiki",
                            {
                                kitten_id: kittenId
                            }
                        )
                        .then(r => console.log(r))
                .catch(e => console.log(e));
                window.location.reload(true);
                }
                else{
                    this.inCart = true;
                }
            },
            reset: function(){
                this.seeCats = false
                this.seeAdoptionInfo = false
                this.seeCart = false
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