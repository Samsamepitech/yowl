<template>
<div class="max-w-sm w-full lg:max-w-full lg:flex">
  <img src="/src/assets/Saint-Brieuc20-street-art-Jayn-Ephiq-02.jpg" alt="street art facade de St Brieuc">
  </div>
  <div class="border-r border-b border-l border-gray-400 lg:border-l-0 lg:border-t lg:border-gray-400 bg-white rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal">
    <div class="mb-8">
      <div class="text-gray-900 font-bold text-xl mb-2">Can coffee make you a better developer?</div>
      <p class="text-gray-700 text-base">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus quia, nulla! Maiores et perferendis eaque, exercitationem praesentium nihil.</p>
    </div>
    <div class="flex items-center">
      <img class="w-10 h-10 rounded-full mr-4" src="assets/man.jpg" alt="Avatar of koko">
      <div class="text-sm">
        <p class="text-gray-900 leading-none">koko</p>
        <p class="text-gray-600"> {{ '15 avril 2022' }} </p>
        <p> {{ user.name }} </p>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'UserOne',
  data () {
    return {
      user: []
    }
  },
  async mounted () {
    axios
      .get('http://localhost:3000/users/{id}')
      .then((response) => {
        this.user = response.data
        console.log(response.data)
      })
      .catch((err) => {
        console.log(err)
      })
  }
}
</script>

<style scoped>

@import "tailwindcss/base";
@import "tailwindcss/components";
@import "tailwindcss/utilities";

</style>
