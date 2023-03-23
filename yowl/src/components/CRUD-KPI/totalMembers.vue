<template>
<div class="index_container users">
  <h5>Total members </h5>
    <div class="data">
        <p> {{ users.length }} </p>
    </div>
</div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'TotalMembers',
  data () {
    return {
      users: []
    }
  },
  async mounted () {
    axios
      .get('http://localhost:3000/users')
      .then((response) => {
        this.users = response.data
        console.log(response.data)
      })
      .catch((err) => {
        console.log(err)
      })
  }
}
</script>
<style >
@import url('https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,200;1,400&family=Righteous&family=Zen+Antique&display=swap');

.index_container{
  font-family: 'Zen Antique', Verdana, Geneva, Tahoma, sans-serif;
  width:20em;
  height:10em;
  margin:2em;
  border: 1px solid lightgray;
  border-radius:5px;
  box-shadow: 3px 2px 3px gray;
  padding: 2em;
  display:inline-flex;
  background-color: azure;
}
.data{
  width:5em;
}
p{
  font-size:20px;
  font-weight: bold;
}
</style>
