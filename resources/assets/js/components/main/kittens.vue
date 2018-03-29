<template>
    <div id="kittens">
        <div class="kittens-inner col-lg-4"
             v-for="kitten in this.kittens"
             :id="kitten.id">
            <img height="150px" width="125px" :src="kitten.photos">
            <br>
            <span id="name"><b>Name:</b> {{kitten.name}}</span><br>
            <span id="age"><b>Age:</b> {{kitten.age}}</span><br>
            <span id="history"><b>History:</b> {{kitten.history}}</span><br>
            <span id="fertility"><b>Fertile:</b> {{kitten.fertility}}</span>
            <br>
            <span id="adopted"><b>Adopted:</b>{{kitten.adopted}}</span>
            <br><br>
            <button class="btn btn-success" v-on:click="Cart(kitten)">Add to Cart</button>
            <hr/>
        </div>
    </div>
</template>

<script>

    export default {
        mounted() {
            console.log('Component mounted.')
        },
        props:['kittens'],
        components: {
        },
        methods:{
            Cart: function(kitten){
                this.$emit('addToCart', kitten.id);
                
            }
        }
    }
</script>

<style scoped>
    #kittens{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-evenly;
        margin-top: 3rem;
    }
</style>