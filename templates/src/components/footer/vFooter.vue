<template>
  <div id="footer">
    <h2>{{ data.name }}</h2>
    <div class="socials">
      <a class="social" v-for="(social, i) in data.socials" :key="i" :href="social.link">
        <img :src="social.icon" :alt="'Link a ' + social.name" height="40px" width="30px"/>
      </a>
    </div>
    <span class="copyright">© {{ new Date().getFullYear() }} - sitio web creado por Aurie</span>
  </div>
</template>

<script>
export default {
  name: 'vFooter',
  data: () => ({
    data: {
      socials: [
        {
          name: 'Facebook',
          icon: require('@/assets/icons/facebook.svg'),
          link: '#',
        },
        {
          name: 'Instagram',
          icon: require('@/assets/icons/instagram.svg'),
          link: '#',
        },
        {
          name: 'Twitter',
          icon: require('@/assets/icons/twitter.svg'),
          link: '#',
        },
      ],
      name: "Lorem"
    },
  }),
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
    color: var(--background);
  }
  .socials {
    display: flex;
    gap: 30px;
    margin-bottom: 20px;
  }
  .social {
    overflow: hidden;
    border-radius: 50%;
    height: 35px;
    width: 35px;
    transition: filter .3s ease-out;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .social:hover {
    filter: brightness(.7);
  }
  .copyright {
    font-size: 14px;
  }
</style>