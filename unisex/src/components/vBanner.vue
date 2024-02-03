<template>
  <div id="banner">
    <div class="slogan">
        <div class="title">
          {{  data.title }}
        </div>
        <div class="text">
          {{  data.text }}
        </div>
    </div>
    <div class="hero-image">
      <img :src="data.image" :alt="'Imagen de '+data.alt"/>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vBanner',
  props: {
    data : {
      required: true,
    }
  },
}
</script>

<style scoped>
  #banner {
    height: calc(100%);
    background: var(--primary);
    display: flex;
    justify-content: center;
  }
  .slogan {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 70%;
    width: 50%;
    flex-direction: column;
  }
  .title {
    font-size: 30px;
    font-weight: bold;
    margin-left: 10%;
  }
  .text {
    width: 80%;
    margin-top: 15px;
    margin-left: 30px;
  }
  .hero-image {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 50%;
    height: 100%;
  }
</style>