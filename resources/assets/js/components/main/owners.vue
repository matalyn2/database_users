<template>
    <div class="container">
        <div class="row">
            <div id="owners">
                <div class="owners-inner col-lg-4"
                     v-for="person in this.owners"
                     :id="person.id">
                    <span id="name"><b>Name:</b> {{person.name}}</span><br>
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
        props:['owners']
    }
</script>

<style scoped>
    #owners{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-evenly;
        margin-top: 3rem;
    }
</style>