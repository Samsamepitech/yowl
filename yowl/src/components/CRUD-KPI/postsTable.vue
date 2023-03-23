<template>
    <div class="posts_table">
  <table>
    <thead>
      <th colspan="8"><p class="titre">Posts data</p></th>
    </thead>
    <thead>
        <tr>
            <th>User</th>
            <th>content</th>
            <th>Comments/post</th>
            <th>Activity/comments</th>
            <th>Activity/saved</th>
            <th>Activity/shares</th>
            <th> Actions </th>
        </tr>
    </thead>
    <tbody>
        <tr v-for="post in posts" :key="post.id">
            <td>{{ post.user_id }}</td>
            <td>{{ post.content }}</td>
            <td>{{ post.comment_count }}</td>
            <td> {{ post.saved }} </td>
            <td > {{ post.posted }} </td>
            <td> {{ post.stars }} </td>
            <td> </td>
            <td><button>Delete</button></td>
        </tr>
    </tbody>
</table>
</div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'postsTable',
  components: {
  },
  data () {
    return {
      posts: [],
      users: [],
      stars: ''
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
    axios
      .get('http://localhost:3000/users')
      .then((response) => {
        this.users = response.data
        console.log(response.data)
      })
      .catch((err) => {
        console.log(err)
      })
    axios
      .get('http://localhost:3000/posts/stars')
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

<style scoped>
.posts_table{
  border: 1px solid black;
  border-radius: 10px;
  box-shadow: 3px 3px 5px gray;
  margin: 3em;
  width:fit-content;
  font-size:16px;
  background-color: white;
}
.titre{
border: 1px solid rgb(57, 56, 56);
border-radius: 8px;
text-align: center;
background-color: rgb(162, 247, 172);
}
td{
  padding: .5em;
  max-width: 20em;
  word-wrap: break-word;
  flex-wrap: wrap;
  border-bottom: 2px solid blueviolet;
}
th{
  min-width: 5em;
}
</style>
