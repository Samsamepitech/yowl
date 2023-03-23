<template>
<div class="index_container stars">
  <h3>Total members </h3>
    <div class="data">
        <p> {{ stars }} </p>
    </div>
</div>
</template>
<script>
import axios from 'axios'
export default {
  name: 'StarsPost',
  data () {
    return {
      stars: []
    }
  },
  async mounted () {
    axios
      .get('http://localhost:3000/posts/stars/{id}')
      .then((response) => {
        this.stars = response.data
        console.log(response.data)
      })
      .catch((err) => {
        console.log(err)
      })
  }
}
</script>
