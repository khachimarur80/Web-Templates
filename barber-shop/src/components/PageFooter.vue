<template>
  <div id="footer">
    <span class="footer-title">
      The barber's shop
    </span>
    <span class="socials">
      <span v-for="(social, i) in socials" :key="i">
      </span>
    </span>
    <span class="footer-text">
      ©2024 The Barber's Shop - Sitio Web creado por KA
    </span>
  </div>
</template>

<script>
export default {
  name: 'NavBar',
  data: ()=>({
    socials: [1,2,3,4,5]
  }),
  mounted() {
  }
}
</script>

<style scoped>
  #footer {
    height: 200px;
    padding: 40px;
    display: flex;
    background: black;
    align-items: center;
    flex-direction: column;
    justify-content: space-around;
  }
  .footer-title {
    font-family: "HelveticaNeue";
    font-weight: bold;
    font-size: 24px;
    color: white;
  }
  .footer-text {
    font-family: "HelveticaNeue";
    font-size: 16px;
    color: white;
  }
  .socials {
    display: flex;
    gap: 10px;
  }
  .socials span {
    background: white;
    height: 20px;
    width: 20px;
    border-radius: 50%;
  }
</style>
