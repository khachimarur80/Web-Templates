<template>
  <div id="app" @scroll="handleScroll">
    <NavBar :show="show"/>
    <FullCarousel :slides="slides"/>
    <ServicesList :services="services"/>
    <HeroBanner/>
    <SchedulesList/>
    <PricingList :products="products"/>
    <PageFooter/>
    <GoToTop :show="show"/>
  </div>
</template>

<script>
import FullCarousel from '@/components/FullCarousel.vue'
import ServicesList from '@/components/ServicesList.vue'
import NavBar from '@/components/NavBar.vue'
import HeroBanner from '@/components/HeroBanner.vue'
import SchedulesList from '@/components/SchedulesList.vue'
import PricingList from '@/components/PricingList.vue'
import PageFooter from '@/components/PageFooter.vue'
import GoToTop from '@/components/GoToTop.vue'

//import BookService --> For later


export default {
  name: 'App',
  components: {
    FullCarousel,
    ServicesList,
    NavBar,
    HeroBanner,
    SchedulesList,
    PricingList,
    PageFooter,
    GoToTop
  },
  data: ()=>({
    slides: [
      {
        image: require('@/assets/images/image1.jpeg'),
        slogan: "La Rodola",
        text: "Escribe aqui tu pequeño texto como slogan, con la información que creas necesaria. No debe ser ni muy larga, ni muy corta. Así está bien.",
        letter: "LR",
      },
      {
        image: require('@/assets/images/image2.webp'),
        slogan: "Mejores cortes de pelo",
        text: "Escribe aqui tu pequeño texto como slogan, con la información que creas necesaria. No debe ser ni muy larga, ni muy corta. Así está bien.",
        letter: "MCP",
      },
      {
        image: require('@/assets/images/image3.jpeg'),
        slogan: "Eleva tu estilo",
        text: "Escribe aqui tu pequeño texto como slogan, con la información que creas necesaria. No debe ser ni muy larga, ni muy corta. Así está bien.",
        letter: "E",
      }
    ],
    services: [
      {
        name: "Cabello",
        description: "Es la esencia de nuestro salón. Nuestros técnicos especializados valorarán la forma más adecuada para crear, mantener o renovar tu imagen.",
        image: require("@/assets/images/haircut.jpg")
      },
      {
        name: "Barba",
        description: "Sin duda, el mejor afeitado de Madrid. Nuestro afeitado es la mezcla perfecta de la tradición y las nuevas tecnologías.",
        image: require("@/assets/images/beardcut.webp")
      },
      {
        name: "Piel",
        description: "Cuidado total de la imagen del hombre: masajes, depilaciones, manicuras/pedicuras, tratamientos faciales y corporales.",
        image: require("@/assets/images/skincare.jpg")
      },
    ],
    products: [
      {
        name: "Corte de Pelo",
        price: "19",
        description: "Incluye lavado de cabello y peinado"
      },
      {
        name: "Afeitado Clásico",
        price: "15",
        description: "Un afeitado suave con toallas calientes y crema hidratante"
      },
      {
        name: "Diseño de Barba",
        price: "25",
        description: "Crea la barba perfecta con recorte y definición"
      },
      {
        name: "Tratamiento Capilar",
        price: "30",
        description: "Revitaliza tu cabello con un tratamiento intensivo"
      },
      {
        name: "Masaje de Cuero Cabelludo",
        price: "12",
        description: "Relájate con un masaje rejuvenecedor del cuero cabelludo"
      },
      {
        name: "Color de Barba",
        price: "20",
        description: "Renueva tu estilo con un toque de color para la barba"
      }
    ],
    show: false,
  }),
  methods: {
    handleScroll() {
      this.show = parseInt(document.getElementById("app").scrollTop) > 600
    } 
  }
}
</script>

<style>
body, html {
  margin: 0px;
  padding: 0px;
  overflow: hidden;
}
#app {
  height: 100vh;
  width: 100h;
  overflow: scroll;
  overflow-x: hidden;
  box-sizing: border-box;
  position: relative;
}
#app::-webkit-scrollbar {
  display: none;
}
</style>
