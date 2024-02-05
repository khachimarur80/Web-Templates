<template>
  <vNavbar :data="navbar"/>
  <router-view></router-view>
</template>

<script>
import vNavbar from '@/components/navbar/vNavbar'

export default {
  name: 'App',
  components : {
    vNavbar
  },
  data: () => ({
    theme: {
      primary: '#4285F4',
      background_dark: '#202124',
      background: '#FFFFFF',
      error: '#EA4335',
      success: '#34A853',
      warning: '#FBBC05',
      text_light: '#EEEEEE',
      font_family: 'Verdana',
      text: '#222',
    },
    navbar: {
      name: 'Lorem',
      icon: require('@/assets/sample.png'),
      items: ['Servicios', 'Equipo', 'Galería', 'Información', 'Promociones', 'Testimonios', 'Contacto'],
      alt: 'Alt de la imagen',
    },
  }),
  mounted() {
    for (let theme in this.theme) {
      document.documentElement.style.setProperty('--'+theme.replace('_', '-'), this.theme[theme])
    }
  },
}
</script>

<style>
body, html {
  margin: 0;
  padding: 0;
  height: 100vh;
  width: 100h;
  overflow: hidden;
  font-family: var(--font-family);
}
</style>
