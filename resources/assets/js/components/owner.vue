<template>
    <div class="container">
        <div class="row">
            <div id="owners">
                <div class="kittens-inner col-lg-4"
                     v-for="person in this.owner"
                     :id="person.id">
                    <img height="150px" width="125px" :src="kitten.photos">
                    <br>
                    <span id="name"><b>Name:</b> {{person.name}}</span><br>
                    <span id="phone"><b>Phone:</b> {{person.phone}}</span><br>
                    <span id="email"><b>Email:</b> {{person.email}}</span><br>
                    <span id="address"><b>Address:</b> {{person.address}}</span><br>
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
        props:['owner']
    }
</script>
<style scoped>
    #owners{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
</style>