<template>
  <div id="banner">
    <div class="banner-inner">
      <div class="banner-contents">
        <div class="banner-icon">
        </div>
        <div class="banner-slogan">
          {{ slogan }}
        </div>
        <div class="banner-text">
          {{ text }}
        </div>
      </div>
      <div class="banner-image">
      </div>
    </div>
    <div class="text-animation-container">
      <div class="text-animation">
        &nbsp;THE BARBER'S SHOP&nbsp;
      </div>
      <div class="text-animation">
        &nbsp;THE BARBER'S SHOP&nbsp;
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NavBar',
  data: ()=>({
    slogan: "Bienvenido a the barber's shop",
    text: "Un espacio dedicado exclusivamente al hombre, donde el espectáculo y el arte se combinan para tener una experiencia inolvidable.",
  }),
  mounted() {
  }
}
</script>

<style scoped>
  #banner {
    background: #10100f;
    padding-top: 80px;
    padding-bottom: 80px;
    user-select: none;
  }
  .banner-inner {
    display: flex;
    justify-content: space-between;
  }
  .banner-contents {
    height: 100%;
    width: 400px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    flex-direction: column;
    margin: 80px;
    gap: 20px;
  }
  .banner-icon {
    height: 300px;
    width: 300px;
    border: 1px solid white;
  }
  .banner-slogan {
    font-family: "HelveticaNeue";
    font-weight: bolder;
    font-size: 50px;
    text-align: center;
    color: white;
    width: 350px;
  }
  .banner-text {
    width: 400px;
    font-family: "HelveticaNeue";
    font-size: 18px;
    text-align: center;
    color: rgb(98, 95, 95);
    margin-top: 40px;
    line-height: 30px;
  }

  @keyframes moveText {
    0% {
      transform: translateX(0%);
    }
    100% {
      transform: translateX(-100%);
    }
  }

  .text-animation-container {
    height: 350px;
    width: fit-content;
    overflow: hidden;
    user-select: none;
    margin-top: 50px;
    margin-bottom: 50px;
    display: flex;
    align-items: center;
  }

  .text-animation:nth-child(1) {
    display: flex;
    white-space: nowrap;
    font-family: "HelveticaNeue";
    font-weight: bold;
    font-size: 25vw;
    color: rgb(39, 39, 39);
    animation: moveText 20s linear infinite;
  }
  .text-animation:nth-child(2) {
    display: flex;
    white-space: nowrap;
    font-family: "HelveticaNeue";
    font-weight: bold;
    font-size: 25vw;
    color: rgb(39, 39, 39);
    animation: moveText 20s linear infinite;
  }
  .banner-image {
    width: 400px;
    margin-top: -100px;
    background: url("@/assets/images/perfilHombre.png");
  }


</style>
