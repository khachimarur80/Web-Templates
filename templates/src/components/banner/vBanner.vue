<template>
  <div id="banner">
    <div class="slogan">
        <div class="title">
          {{  data.title }}
        </div>
        <div class="text">
          {{ data.text }}
        </div>
    </div>
    <div class="hero-image">
      <img :src="data.image" :alt="'Imagen de '+data.alt" width="100%" />
    </div>
  </div>
</template>

<script>
export default {
  name: 'vBanner',
  data: () => ({
    data: {
      title: '¡Estilo sin límites!',
      text: 'Descubre tu look perfecto en nuestra peluquería unisex. ¡Bienvenido a la belleza sin fronteras!',
      image: require('@/assets/images/hero.webp'),
    },
  })
}
</script>

<style scoped>
  #banner {
    height: calc(100%);
    background: var(--primary);
    display: flex;
    justify-content: center;
    width: 100h;
  }
  .slogan {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
    width: 50%;
    flex-direction: column;
  }
  .title {
    font-size: 40px;
    font-weight: bold;
    margin-left: 10%;
    color: var(--background);
  }
  .text {
    width: 80%;
    max-width: 400px;
    margin-top: 5%;
    font-size: 20px;
    margin-left: calc(10% + 30px);
    text-align: end;
    color: var(--background);
  }
  .hero-image {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 50%;
    height: 100%;
    overflow: hidden;
    border-top-left-radius: 40px;
  }
</style>