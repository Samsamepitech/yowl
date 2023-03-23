<template>
<div class="index_container stars">
  <h5> Total comments </h5>
    <div class="data">
        <p> {{ 18 }} </p>
    </div>
</div>
</template>
<script>
import axios from 'axios'
export default {
  name: 'StarsPost',
  data () {
    return {
      comments: []
    }
  },
  async mounted () {
    axios
      .get('http://localhost:3000/comments')
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
