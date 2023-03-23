<template>
<div class="index_container stars">
  <h5>Total comments/ post </h5>
    <div class="data">
        <p> {{ comments.length }} </p>
    </div>
</div>
</template>
<script>
import axios from 'axios'
export default {
  name: 'TotalComments',
  data () {
    return {
      comments: []
    }
  },
  async mounted () {
    axios
      .get('http://localhost:3000/comments/post_id')
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
