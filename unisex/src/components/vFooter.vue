<template>
  <div id="footer">
    <h2>{{ data.name }}</h2>
    <div class="socials">
      <a class="social" v-for="(social, i) in data.socials" :key="i" :href="social.link">
        <img :src="social.icon" :alt="'Link a ' + social.name" height="40px" width="40px"/>
      </a>
    </div>
    <span class="copyright">© {{ new Date().getFullYear() }} - sitio web creado por Aurie</span>
  </div>
</template>

<script>
export default {
  name: 'vFooter',
  props: {
    data: {
      required: true
    }
  }
}
</script>

<style scoped>
  #footer {
    width: 100h;
    height: 200px;
    background: var(--primary);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
  .socials {
    display: flex;
    gap: 30px;
    margin-bottom: 20px;
  }
  .social {
    overflow: hidden;
    border-radius: 50%;
    height: 40px;
    width: 40px;
    transition: filter .3s ease-out;
  }
  .social:hover {
    filter: brightness(.7);
  }
  .copyright {
    font-size: 14px;
  }
</style>