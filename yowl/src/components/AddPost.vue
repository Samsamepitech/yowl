<template>
<div>
    <div class="container">
        <div class="post">
            <div class="titre">
                <h4>New Post</h4><br>
                <form action="/profile" method="post" enctype="multipart/form-data">
                    <textarea v-model="postcontent" class="form-control" placeholder="write your post"></textarea><br>
                    <input id="file" type="file" name="uploaded_file" />
                    <input type="submit" value="submit" />
                </form>
            </div>
            <hr>
            <div>
                <router-link to="account">
                    <button class="btn btn-primary" type="button"  @click='Addpost'>Post</button>
                </router-link>
            </div>
        </div>
    </div>
</div>
</template>

<script>
import axios from 'axios'
export default {
  data () {
    return {
      posts: [
      ],
      postcontent: ''
    }
  },

  methods: {
    addpost () {
      axios
        .post('http://localhost:3000/Posts',
          {
            content: this.postcontent
          })
        .then(function (response) {
          console.log(response)
        })
    }
  }
}
</script>

<style scoped>
.post{
	background: #fff;
	padding: 25px;
	margin-bottom: 25px;
    margin-top: 25px;
	border-radius: 5px;
	overflow: hidden;
	box-shadow: 0 2px 30px rgba(0, 0, 0, 0.1);
	transition: all 0.2s;
    height: 200px;
	width: 100px;
    margin-right: auto;
    margin-left: auto;
    padding-top: 0px;
	padding-bottom: 100px;
    width:35%;

}
.form-control{
    width:90%;
    height: 20px;
    border-radius: 5px;
    float: left;
    height: 100px;
    margin-right: auto;
    margin-left: auto;
}

#file{
    margin-top:10px;
}

</style>
