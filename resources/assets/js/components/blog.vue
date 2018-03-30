<template>
    <div class="container" id="blog">
        <div class="row">
            <div class="article col-lg-4"
                     v-for="article in this.articles"
                     :id="article._id.$oid">
                    <h2 id="title"><b>{{article.title}}</b></h2><br>
                    <div class="body">
                    {{ article.body }}
                    </div>
                    <br>
                    <br>
                      <div class="form-group">
                        <input type="text" class="form-control" v-model="comment" id="comment"placeholder="Leave a Comment...">
                        </div>
                      <button 
                        v-on:click="submitComment(article._id.$oid)" class="btn btn-info">Submit</button>
                        <br><br>
                        <div class="panel panel-default">
                          <div class="panel-heading"><b>Comments</b></div>
                         <ul v-if="article.comment" 
                                class="list-group"
                                v-for="comment in article.comment">
                            <li class="list-group-item">{{ comment }}</li>
                        </ul>
                    </div>
                    <hr/>
                </div>
        </div>
    </div>
</template>

<script>

    export default {
        mounted() {
            console.log('Component mounted!!!')
        },
        data: function(){
            return{
                comment: ''
            }
        },
        props:['articles'],
        components: {
        },
        methods:{
            submitComment: function (id) {
                axios
                    .post(
                        "/blog",
                        {
                            comment: this.comment,
                            id: id
                        }
                    )
                    .then(r => console.log(r))
            .catch(e => console.log(e));
            window.location.reload(true);

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
