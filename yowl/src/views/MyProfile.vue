<template>
<div>
<section class="main-content">
		<div class="container">

            <div class="row">
				<div class="col-sm-6 offset-sm-3">
					<div class="post-block">
						<div class="d-flex justify-content-between">
							<div class="d-flex mb-3">
								<div class="mr-2">
									<a href="" class="text-dark"><img src="../assets/profile.png" alt="User" class="author-img"></a>
								</div>
								<div>
									<h5 class="mb-0"><a href="" class="text-dark"></a></h5>
								</div>
                                <div class="col col-auto">
                                <button @click="editprofile" class="btn btn-info" type="button"> Edit profile</button>
                              </div>
							</div>
                            <div class= "gallerie">
                            	<img src="../assets/hop.jpg" alt="Content img">
                                	<img src="../assets/breakdance-carre.jpg" alt="Content img">
                            </div>
						</div>
						</div>
                        <br>
                        <br>
						<hr>
						</div>
					</div>
				</div>
			</div>
			</div>
	</section>
    <ButtonBackHome />
    </div>
</template>

<script>
import ButtonBackHome from '@/components/ButtonBackHome.vue'
export default {
  components: {
    ButtonBackHome
  }

}
</script>

<style scoped>
.gallerie{
    background: #fff;
	padding: 25px;
	margin-bottom: 25px;
	border-radius: 5px;
	overflow: hidden;
	box-shadow: 0 2px 30px rgba(0, 0, 0, 0.1);
	transition: all 0.2s;
     width:50%;
    margin-right: auto;
    margin-left: auto;
}

img {
    padding: 10px 10px 10px 10px;
    vertical-align: middle;
    border-style: none;
}

button {
	border-radius: 20px;
	border: 1px solid rgb(100, 77, 228);
	background-color: white;
	color: rgb(100, 77, 228);
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
    margin-top: 10px;
    margin-bottom: 10px;
}
</style>
