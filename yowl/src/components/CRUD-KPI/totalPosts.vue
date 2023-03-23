<template>
<div class="index_container posts">
  <h5>Total posts </h5>
    <div class="data">
        <p> {{ posts.length }} </p>
    </div>
  </div>
</template>
<script>
import axios from 'axios'
export default {
  name: 'TotalPosts',
  data () {
    return {
      posts: []
    }
  },
  async mounted () {
    axios
      .get('http://localhost:3000/posts')
      .then((response) => {
        this.posts = response.data
        console.log(response.data)
      })
      .catch((err) => {
        console.log(err)
      })
  }
}
</script>
