<template>
  <div id="app">
    <NavBar/>
    <HeroImage/>
  </div>
</template>

<script>
import NavBar from '@/components/NavBar.vue'
import HeroImage from '@/components/HeroImage.vue'

export default {
  name: 'App',
  components: {
    NavBar,
    HeroImage,
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}
body, html {
  margin: 0px;
  padding: 0px;
}
</style>
