<template>
    <div class="container">
        <div class="row">
            <div id="owners">
            <div class="col-lg-4">
                    <h2 id="name">{{this.self[0].name}}</h2><br>
                    <span id="phone"><b>Phone:</b> {{this.self[0].phone}}</span><br>
                    <span id="email"><b>Email:</b> {{this.self[0].email}}</span><br>
                    <span id="address"><b>Address:</b> {{this.self[0].address}}</span><br>
            </div>
                <div class="kittens-inner"
                     v-for="kitten in this.owners"
                     :id="kitten.id">
                     <br>
                   <img height="150px" width="125px" :src="kitten.photos"><br>
                    <h2 id="name">{{kitten.name}}</h2><br>
                    <span id="aDate"><b>Adoption Date:</b> {{kitten.aDate}}</span><br>
                    <span id="age"><b>Age:</b> {{kitten.age}}</span><br>
                    <span id="history"><b>History:</b> {{kitten.history}}</span><br>
                    <span id="fertility"><b>Fertile:</b> {{kitten.fertility}}</span>
                    <br>
                    <div id="contract">
                        <embed :src="kitten.contract" width="600" height="500" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html">

                    </div>
                    <br><br>
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
        props:['owners', 'self']
    }
</script>
<style scoped>
    #owners{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
</style>