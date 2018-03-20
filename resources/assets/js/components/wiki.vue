<template>
    <div class="container">
        <div class="row">
            <div id="kittens">
                <div class="kittens-inner col-lg-4"
                     v-for="kitten in this.kittens"
                     :id="kitten.id">
                    <img height="150px" width="125px" :src="kitten.photos">
                    <br>
                    <span id="name"><b>Name:</b> {{kitten.name}}</span><br>
                    <span id="age"><b>Age:</b> {{kitten.age}}</span><br>
                    <span id="history"><b>History:</b> {{kitten.history}}</span><br>
                    <span id="fertility"><b>Fertile:</b> {{kitten.fertility}}</span><br>
                    <span id="adopted"><b>Adopted:</b> {{kitten.adopted}}</span><br>
                    <hr/>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        },
        props:['kittens']
    }
</script>
<style scoped>
    #kittens{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
</style>