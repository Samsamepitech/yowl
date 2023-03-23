<template>
<div>
<div>
<div class="topnav" :user="me">
  <a class="active" @click="logout()" href="/">Logout</a>
  <a @click="goProfile">Profile</a>
  <a @click="NewPost"> + New post</a>
  <a @click="goAdmin"> Admin</a>
  <div class="search-container">
    <div action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </div>
  </div>
</div>
<AddPost v-if="showpost" />
<section class="main-content">
		<div class="container">

<div class="row">
				<div class="col-sm-6 offset-sm-3">
					<div class="post-block">
						<div class="d-flex justify-content-between">
							<div class="d-flex mb-3">
								<div class="mr-2">
									<a href="" class="text-dark"><img src="../assets/images/octopus.jpg" alt="User" class="author-img">Ljo</a>
								</div>
								<div>
									<h5 class="mb-0"><a href="" class="text-dark"></a></h5>
								</div>
							</div>
							<div class="post-block__user-options">
								<a href="" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
											<i class="fa fa-ellipsis-v" aria-hidden="true"></i>
								</a>
							</div>
						</div>
                        <br>
                        <br>
						<div class="post-block__content mb-2">
							<p></p>
							<img src="../assets/breakdance-carre.jpg" alt="Content img">
              <p>enfin hier, en certre ville... #lovetodance #freedom</p>
						</div>
						<div class="mb-3">
							<div class="d-flex justify-content-between mb-2">
								<div class="d-flex">
									<a href="#!" class="text-danger mr-2">
                                            <div class="rating">
                                            <span>☆ 786</span>
                                            </div>
                                    </a>
                                    <a href="#!" d="book" class="text-danger mr-2"><span><i i class="fa fa-bookmark-o"></i></span></a>
								</div>
								<a href="#!" class="text-dark"><span>Share</span></a>
							</div>
						</div>
						<hr>
						<div class="post-block__comments">
							<!-- Comment Add-->
							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="Add your comment" v-model='commentcontent'>
								<div class="input-group-append">
                                   <button class="btn btn-primary" type="button" id="button-addon2" ><i class="fa fa-paper-plane"></i></button>
								</div>
							</div>
               <p> Yo, mec, trop fort, j'adore ta photo</p>
                <p> la classe</p>
                <p> t'es où là, t'es encore parti sans rien dire</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
</div>

<section class="main-content">
		<div class="container">

<div class="row">
				<div class="col-sm-6 offset-sm-3">
					<div class="post-block">
						<div class="d-flex justify-content-between">
							<div class="d-flex mb-3">
								<div class="mr-2">
									<a href="" class="text-dark"><img src="../assets/avatar.png" alt="User" class="author-img">BIba</a>
								</div>
								<div>
									<h5 class="mb-0"><a href="" class="text-dark"></a></h5>
								</div>
							</div>
							<div class="post-block__user-options">
								<a href="" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
											<i class="fa fa-ellipsis-v" aria-hidden="true"></i>
								</a>
							</div>
						</div>
                        <br>
                        <br>
						<div class="post-block__content mb-2">
							<p></p>
							<img src="../assets/images/mangap.jpg" alt="Content img">
              <p>j'aime trop ce manga</p>
						</div>
						<div class="mb-3">
							<div class="d-flex justify-content-between mb-2">
								<div class="d-flex">
									<a href="#!" class="text-danger mr-2">
                                            <div class="rating">
                                            <span>☆ 36</span>
                                            </div>
                                    </a>
                                    <a href="#!" d="book" class="text-danger mr-2"><span><i i class="fa fa-bookmark-o"></i></span></a>
								</div>
								<a href="#!" class="text-dark"><span>Share</span></a>
							</div>
						</div>
						<hr>
						<div class="post-block__comments">
							<!-- Comment Add-->
							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="Add your comment" v-model='commentcontent'>
								<div class="input-group-append">
                                   <button class="btn btn-primary" type="button" id="button-addon2" ><i class="fa fa-paper-plane"></i></button>
								</div>
							</div>
               <p> là la la la lala lal</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>

<section class="main-content">
		<div class="container">

<div class="row">
				<div class="col-sm-6 offset-sm-3">
					<div class="post-block">
						<div class="d-flex justify-content-between">
							<div class="d-flex mb-3">
								<div class="mr-2">
									<a href="" class="text-dark"><img src="../assets/images/dog.png" alt="User" class="author-img">Oscar</a>
								</div>
								<div>
									<h5 class="mb-0"><a href="" class="text-dark"></a></h5>
								</div>
							</div>
							<div class="post-block__user-options">
								<a href="" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
											<i class="fa fa-ellipsis-v" aria-hidden="true"></i>
								</a>
							</div>
						</div>
                        <br>
                        <br>
						<div class="post-block__content mb-2">
							<p></p>
							<img src="../assets/images/mangas.jpg" alt="Content img">
              <p>#japanpink #cherryblossom</p>
						</div>
						<div class="mb-3">
							<div class="d-flex justify-content-between mb-2">
								<div class="d-flex">
									<a href="#!" class="text-danger mr-2">
                                            <div class="rating">
                                            <span>☆ 453</span>
                                            </div>
                                    </a>
                                    <a href="#!" d="book" class="text-danger mr-2"><span><i i class="fa fa-bookmark-o"></i></span></a>
								</div>
								<a href="#!" class="text-dark"><span>Share</span></a>
							</div>
						</div>
						<hr>
						<div class="post-block__comments">
							<!-- Comment Add-->
							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="Add your comment" v-model='commentcontent'>
								<div class="input-group-append">
                                   <button class="btn btn-primary" type="button" id="button-addon2" ><i class="fa fa-paper-plane"></i></button>
								</div>
                <p> the most beautiful moment at this period of the year, have to see it to believe it</p>
                <p> so tender </p>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
<section class="main-content">
		<div class="container">
<div class="row">
				<div class="col-sm-6 offset-sm-3">
					<div class="post-block" v-for='post in posts' v-bind:key='post.id'>
						<div class="d-flex justify-content-between">
							<div class="d-flex mb-3">
								<div class="mr-2">
									<a href="" class="text-dark"><img src="../assets/profile.png" alt="User" class="author-img">Sonia</a>
								</div>
								<div>
									<h5 class="mb-0"><a href="" class="text-dark"></a></h5>
								</div>
							</div>
							<div class="post-block__user-options">
								<a href="" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
											<i class="fa fa-ellipsis-v" aria-hidden="true"></i>
								</a>
							</div>
						</div>
                        <br>
                        <br>
						<div class="post-block__content mb-2">
							<p>{{ post.content }}</p>
							<img src="../assets/hop.jpg" alt="Content img">
						</div>
						<div class="mb-3">
							<div class="d-flex justify-content-between mb-2">
								<div class="d-flex">
									<a href="#!" class="text-danger mr-2">
                                            <div class="rating">
                                            <span>☆</span>
                                            </div>
                                    </a>
                                    <a href="#!" d="book" class="text-danger mr-2"><span><i i class="fa fa-bookmark-o"></i></span></a>
								</div>
								<a href="#!" class="text-dark"><span>Share</span></a>
							</div>
						</div>
						<hr>
						<div class="post-block__comments">
							<!-- Comment Add-->
							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="Add your comment" v-model='commentcontent'>
								<div class="input-group-append">
                                   <button class="btn btn-primary" type="button" id="button-addon2" @click='AddComment'><i class="fa fa-paper-plane"></i></button>
								</div>
							</div>
               <CommentsVue v-bind:com='com'/>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
</div>
</template>

<script>
import axios from 'axios'
import CommentsVue from '@/components/CommentsVue.vue'
import AddPost from '@/components/AddPost.vue'

// import { apiUrl } from '../../config.json'

export default {
  name: 'AccountView',
  components: {
    CommentsVue, AddPost
  },
  props: [
    'com'
  ],
  data () {
    return {
      posts: [],
      comments: [],
      commentcontent: '',
      me: JSON.parse(sessionStorage.getItem('user')),
      showpost: false
    }
  },
  async mounted () {
    axios
      .get('http://localhost:3000/posts ')
      .then((response) => {
        this.posts = response.data
        console.log(response.data)
      })
      .catch((err) => {
        console.log(err)
      })
  },
  methods: {

    AddComment () {
      axios
        .post('http://localhost:3000/comments',
          {
            comment: this.commentcontent,
            post_id: this.$route.params.id
          })
        .then(function (response) {
          console.log(response)
        })
    },

    logout () {
      sessionStorage.removeItem('user')
      sessionStorage.removeItem('token')
      this.that.$router.push('/')
    },
    goProfile () {
      this.$router.push('/profile')
    },
    NewPost () {
      this.showpost = true
      console.log(this.showpost)
    },
    goAdmin () {
      this.$router.push('/admin_kpi')
    }

  }

}

</script>

<style scoped>
@import url("https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap");

.topnav {
overflow: hidden;
background-image: linear-gradient(to bottom right, rgb(205, 105, 252),rgb(0 184 255 / 68%));
width:60%;
margin-left: auto;
margin-right:auto;
font-family: "Roboto", sans-serif;
}

.topnav a {
float: left;
display: block;
color: black;
text-align: center;
padding: 14px 16px;
text-decoration: none;
font-size: 17px;
}

.topnav a:hover {
background-color: #ddd;
color: black;
}
.topnav a.active {
background-color: #4121f3;
color: white;
}

.topnav .search-container {
float: right;
}

.topnav input[type=text] {
padding: 6px;
margin-top: 8px;
font-size: 17px;
border: none;
}

.topnav .search-container button {
float: right;
padding: 6px 10px;
margin-top: 8px;
margin-right: 16px;
background: #ddd;
font-size: 17px;
border: none;
cursor: pointer;
}

.topnav .search-container button:hover {
background: #ccc;
}

body {
background: #f1eee9;
font-family: "Roboto", sans-serif;
}

.main-content {
padding-top: 100px;
padding-bottom: 100px;
width:40%;
margin-right: auto;
margin-left: auto;
}

.post-block {
background: #fff;
padding: 25px;
margin-bottom: 25px;
border-radius: 5px;
overflow: hidden;
box-shadow: 0 2px 30px rgba(0, 0, 0, 0.1);
transition: all 0.2s;
}
.post-block img.author-img {
height: 100px;
width: 100px;
border-radius: 45px;
}
.post-block img.author-img.author-img--small {
height: 100px;
width: 100px;
}
.post-block__content img,
.post-block__content video,
.post-block__content audio {
max-width: 100%;
border-radius: 5px;
}
.post-block .comment-view-box__comment {
border-radius: 5px;
background: #f5f5f5;
padding: 15px;
}
.btn-primary {
color: #fff;
background-color: #007bff;
border-color: #007bff;
height: 25px;
}
img {
padding: 10px 10px 10px 10px;
vertical-align: middle;
border-style: none;
}

.mr-2, .mx-2, .text-dark {
margin-right: .5rem!important;
float:left;
}

i{
    float: right;
}

.form-control{
    width:90%;
    height: 20px;
    border-radius: 5px;
    float: left;
}
.rating {
  unicode-bidi: bidi-override;
  direction: rtl;
}
.rating > span {
  display: inline-block;
  position: relative;
  width: 1.1em;
}
.rating > span:hover:before,
.rating > span:hover ~ span:before {
   content: "\2605";
   position: absolute;
}

</style>
