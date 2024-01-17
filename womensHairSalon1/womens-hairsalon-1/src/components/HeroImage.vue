<template>
  <div id="heroImage">
  </div>
</template>

<script>
export default {
  name: 'NavBar',
  props: {
  }
}
</script>

<style scoped>
  #heroImage {
    background-image: url('@/assets/images/heroImage.png');
    width: 100%;
    height: 500px;
    background-size: cover;
  }
</style>
