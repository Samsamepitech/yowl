<template>
<div class="home">
  <div class="logo">
    <img alt="Vue logo" src="../assets/logoy.png">
     <p id="title"> Welcome to Yowl, the Young Art community ! </p>
  </div>
  <div class="login">
   <LoginView />
  </div>
 <div class="footer">
  <div>
  <p id="terms"> About | Help  |  Privacy |  Terms and conditions </p>
  </div>
  <div>
  <p>@ 2022 Yowl by VlaSamAlex</p>
  </div>
  </div>
</div>
</template>

<script>
// @ is an alias to /src
import LoginView from '@/components/LoginView.vue'

export default {
  name: 'HomeView',
  components: {
    LoginView
  }

}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Hurricane&family=Pacifico&display=swap');
.home{
  height:50vmax;
  background-image: linear-gradient(to bottom right, rgb(205, 105, 252),rgb(0 184 255 / 68%));
}
.logo{
  margin-top: 100px;
  width:50%;
  float:left;
}
.login{
  width:50%;
  float:right;
  margin-top: 200px;
}
#title{
font-family: 'Pacifico', cursive;
font-size: 40px;
}

.footer {
  display: inline;
  align-content: stretch;
}
#terms{
  margin-top:0px;
}

</style>
