<template>
    <div id="cart">
    </div>
</template>

<script>

    export default {
        mounted() {
            console.log('Component mounted!!!')
        },
        props:['kitten'],
        components: {
        },
        methods:{

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