<template>
 <div>

<div class="comment-view-box mb-3" v-for='comment in comments' v-bind:key='comment.id'>
<div class="d-flex mb-2">
<div>
<h6 class="mb-1"><a href="#!" class="text-dark"></a></h6>
<p class="mb-1">{{ comment.content }}</p>
</div>
</div>
</div>
</div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'CommentsVue',
  props: [
    'com'
  ],

  data () {
    return {
      comments: [],
      id: ''
    }
  },
  mounted () {
    axios
      .get('http://localhost:3000/comments/p/id', { headers: { Authorization: `Bearer ${sessionStorage.getItem('token')}` } })
      .then((response) => {
        this.comments = response.data
        console.log(response.data)
      })
      .catch((err) => {
        console.log(err)
      })
  }
}
</script>

<style>

</style>
