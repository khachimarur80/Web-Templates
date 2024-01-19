<template>
  <div id="footer">
    <div class="socials">
      <div v-for="(social, i) in socials" class="social" :key="i">
      </div>
    </div>
    <div class="footer-text">
      ©2024 - Linda & CO
    </div>
  </div>
</template>

<script>
export default {
  name: 'PageFooter',
  data: () => ({
    socials: [1, 2, 3]
  }),
}
</script>

<style scoped>
  #footer {
    height: 150px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 40px;
    background: black;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
  .footer-text {
    font-family: 'HelveticaNeue-Thin';
    font-weight: 100;
    color: white;
  }
  .socials {
    display: flex;
    gap: 20px;
    margin: 30px 0px 30px 0px;
  }
  .social {
    height: 40px;
    width: 40px;
    background: white;
    border-radius: 50%;
  }
</style>
