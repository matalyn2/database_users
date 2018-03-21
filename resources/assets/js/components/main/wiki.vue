<template>
    <div class="container">
        <div class="row">
            <div id="home">
                <button class="btn btn-default" v-on:click="toggle">See Your Adoption Information</button>
                <button class="btn btn-default" v-on:click="toggle">See Available Kittens</button>
            </div>
                <kittens v-if="seeCats" :kittens="this.kittens"></kittens>
                <owners v-if="seeAdoptionInfo" :owners="this.owners"></owners>

        </div>
    </div>
</template>

<script>
    import owners from './owners.vue'
    import kittens from './kittens.vue'

    export default {
        mounted() {
            console.log('Component mounted.')
        },
        data: function(){
          return{
              seeCats: false,
              seeAdoptionInfo: false,
          }
        },
        props:['kittens', 'owners'],
        components: {
            'owners': owners,
            'kittens': kittens,
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