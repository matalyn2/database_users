<template>
    <div class="container">
        <div class="row">
            <div id="home">
                <button v-if="seeCart" v-on:click="reset" class="btn btn-default">Back to Wiki</button>
                <button v-if="!seeCart" class="btn btn-default" v-on:click="toggle">See Your Adoption Information</button>
                <button v-if="!seeCart" class="btn btn-default" v-on:click="toggle">See Available Kittens</button>
            </div>
                <cart v-if="seeCart" :kitten="this.kitten"></cart>
                <kittens v-if="seeCats" v-on:addToCart="cartEvent" :kittens="this.kittens"></kittens>
                <owners v-if="seeAdoptionInfo" :owners="this.owners"></owners>

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
              kitten: {},
          }
        },
        props:['kittens', 'owners'],
        components: {
            'owners': owners,
            'kittens': kittens,
            'cart': cart,
        },
        methods:{
            toggle: function(){
                if(this.seeCats){
                    this.seeCats = false;
                    this.seeAdoptionInfo = true;
                } else{
                    this.seeCats = true;
                    this.seeAdoptionInfo = false;
                }
            },
            cartEvent: function(kitten){
                this.seeCart = true;
                this.seeCats = false;
                this.kitten = kitten;


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