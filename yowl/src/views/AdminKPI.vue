<template>
<div class="board">
<header>
  <img src="../assets/logoy.png" alt="logo app">
  <h1>YOLO</h1>
  <div></div>
</header>
<button-global></button-global>
<div class="header_kpi">

<total-members v-bind:users="users"></total-members>
<total-posts v-bind:posts="posts"></total-posts>
<total-comments v-bind:comments="comments"></total-comments>
      <div class="index_container">
      <h5>Total Shares posts</h5>
      <p> 0 </p>
      </div>
       <div class="index_container">
      <h5>Activity posts/ stars</h5>
      <p> 140 </p>
      </div>
<stars-post v-bind:stars="stars"></stars-post>
</div>
<div class="pb-xlg h-100">
  <section class="h-100 mb-0 widget">
  <h2 class="title">Visits Today</h2>
  <div class="widgetControls widget-controls">
    <a href="#" id="closeId-7"><i class="la la-remove"></i></a>
    </div>
      <div class="widgetBody widget-body ">
        <div class="d-flex justify-content-between align-items-center mb-lg">
          <h2>4,332</h2>
          <h1>&UpperRightArrow;</h1>
          </div>
          <div class="d-flex flex-wrap justify-content-between">
            <div class="mt">
            <h6>+830</h6>
            <p class="text-muted mb-0 mr">Logins</p>
          </div>
          <div class="mt">
            <h6>0.5%</h6>
            <p class="text-muted mb-0">Sign Out</p>
          </div>
              <div class="mt">
                <h6>4.5%</h6>
              <p class="text-muted mb-0 mr">Rate</p>
              </div>
         </div>
        </div>
    </section>
</div>
<h2>Users data</h2>
<div class="users_table">
  <table>
    <thead>
      <th colspan="12"><p class="titre">Users data</p></th>
    </thead>
    <thead>
        <tr>
            <th>Name</th>
            <th>Surame</th>
            <th>Userame</th>
            <th>Email</th>
            <th>Account existence</th>
            <th>Rôle</th>
            <th>Activity</th>
            <th>Status</th>
            <th colspan="3"> Actions </th>
        </tr>
    </thead>
    <tbody>
        <tr v-for="user in users" :key="user.id">
            <td>{{ user.name }}</td>
            <td>{{ user.surname }}</td>
            <td>{{ user.username }}</td>
            <td> {{ user.email }} </td>
            <td > {{ user.create_time }} </td>
            <td> {{ user.role }} </td>
            <td> </td>
            <td> <button>Active</button> </td>
            <td><button @click="seeUser">See details</button></td>
            <td><button>Delete</button></td>
        </tr>
    </tbody>
</table>
</div>
<postsTable v-bind:post='post'></postsTable>
<footer></footer>
</div>
</template>

<script>
import axios from 'axios'
import postsTable from '@/components/CRUD-KPI/postsTable.vue'
import TotalMembers from '@/components/CRUD-KPI/totalMembers.vue'
import TotalPosts from '@/components/CRUD-KPI/totalPosts.vue'
import StarsPost from '@/components/CRUD-KPI/starsPost.vue'
import ButtonGlobal from '@/components/CRUD-KPI/ButtonGlobal.vue'
// import { apiUrl } from '../../config.json'

export default {
  name: 'AdminKPI',
  components: {
    postsTable,
    TotalMembers,
    TotalPosts,
    StarsPost,
    ButtonGlobal
  },
  data () {
    return {
      posts: [],
      users: [],
      categories: [],
      comments: [],
      stars: ''
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
  },
  methods: {
    seeUser () {
      this.$router.push('/one_user')
    }
  }
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,200;1,400&family=Righteous&family=Zen+Antique&display=swap');
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+JP&display=swap');

.board{
  padding:3em;
  background-color:rgb(234, 232, 230);
}
header{
  display: inline-flex;
  justify-content: space-between;
}
.header_kpi{
  font-family: 'kanit', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  font-weight: 800;
  display:flex;
  height:10em;
}

.widget {
    display: block;
    position: relative;
    width:40%;
    height:10%;
    padding: 15px 20px;
    background: rgb(202, 241, 233);
    border-radius: 0.45rem;
    -webkit-box-shadow: var(--widget-shadow);
    box-shadow: var(--widget-shadow);
    margin: 5em;
}
h3 {
    display: block;
    font-size: 0.83em;
    margin-block-start: 1.67em;
    margin-block-end: 1.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.mb-lg {
    margin-bottom: 1.5rem;
}
.align-items-center {
    -webkit-box-align: center!important;
    -ms-flex-align: center!important;
    align-items: center!important;
}
.justify-content-between {
    -webkit-box-pack: justify!important;
    -ms-flex-pack: justify!important;
    justify-content: space-between!important;
}
.d-flex {
    display: -webkit-box!important;
    display: -ms-flexbox!important;
    display: flex!important;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.la-arrow-right:before {
    content: "\F061";
    color:brown;
    height: 2em;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.users_table{
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
.h-100{
  box-shadow: 3px 3px 5px gray;
}
img{
  width:10em;
  height: auto;
}
</style>
