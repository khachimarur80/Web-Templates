<template>
  <div id="app">
    <NavBar/>
    <vParalax :images="images">
      <div id="slogan">
        <div id="welcome">
          Bienvenida
        </div>
        <div id="slogan-text">
          A una experiencia completa de belleza & bienestar
        </div>
      </div>
      <div id="products">
        <ProductsList :products="products"/>
      </div>
      <div id="specials">
        <SpecialsList :specials="specials"/>
      </div>
      <div id="clients">
        <TestimonyList :testimonies="testimonies"/>
      </div>
      <div id="visit">
        <VisitUs/>
      </div>
      <PageFooter/>
    </vParalax>
  </div>
</template>

<script>
import NavBar from '@/components/NavBar.vue'
import vParalax from '@/components/vParalax.vue'
import ProductsList from '@/components/ProductsList.vue'
import SpecialsList from '@/components/SpecialsList.vue'
import TestimonyList from '@/components/TestimonyList.vue'
import VisitUs from '@/components/VisitUs.vue'
import PageFooter from '@/components/PageFooter.vue'

export default {
  name: 'App',
  components: {
    NavBar,
    vParalax,
    ProductsList,
    SpecialsList,
    TestimonyList,
    VisitUs,
    PageFooter
  },
  data: () => ({
    images: [
      require("@/assets/images/women.png"),
      require("@/assets/images/makeup.webp"),
      require("@/assets/images/bubbles.jpg")
    ],
    products: [
      {
        name: 'Faciales',
        textColor: 'black',
        color: '#FFCCBA',
        hoverColor: 'white',
        image: require("@/assets/images/faciales.webp")
      },
      {
        name: 'Maquillaje',
        textColor: 'white',
        color: 'black',
        hoverColor: '#FFCCBA',
        image: require("@/assets/images/maquillaje.webp")
      },
      {
        name: 'Peinados',
        textColor: 'black',
        color: 'white',
        hoverColor: '#FFCCBA',
        image: require("@/assets/images/peinados.webp")
      },
      {
        name: 'Uñas',
        textColor: 'black',
        color: '#FFCCBA',
         hoverColor: 'white',
        image: require("@/assets/images/uñas.webp")
      }
    ],
    specials: [
      {
        name: 'Manicura',
        pricing: 18,
      },
      {
        name: 'Cabello',
        pricing: 25,
      },
      {
        name: 'Corte',
        pricing: 35,
      },
      {
        name: 'Reflejos',
        pricing: 40,
      },
      {
        name: 'Pestañas permanentes',
        pricing: 16,
      },
    ],
    testimonies: [
      {
        name: "Susana Smith",
        occupation: "Estilista",
        testimony: "Párrafo. Haz clic aquí para agregar tu propio texto y editar. Es fácil. Haz clic en Editar Texto o doble clic aquí para agregar tu contenido y cambiar la fuente.",
      },
      {
        name: "Ema Juarez",
        occupation: "Modelo",
        testimony: "Párrafo. Haz clic aquí para agregar tu propio texto y editar. Es fácil. Haz clic en Editar Texto o doble clic aquí para agregar tu contenido y cambiar la fuente.",
      },
      {
        name: "Olivia López",
        occupation: "Abogada",
        testimony: "Párrafo. Haz clic aquí para agregar tu propio texto y editar. Es fácil. Haz clic en Editar Texto o doble clic aquí para agregar tu contenido y cambiar la fuente.",
      }
    ]
  })

}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap');

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}
body, html {
  margin: 0px;
  padding: 0px;
}
#app {
  height: calc(100vh - 50px);
  overflow: hidden;
}
#app:after {
  content: '';
  position: absolute;
  width: 100%;
  height: 50px;
  background: white;
  bottom: 0px;
  left: 0px;
}
#slogan {
  width: fit-content;
  margin-top: 180px;
  margin-bottom: 180px;
  margin-left: 50px;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}
#welcome {
  font-family: 'Great Vibes', cursive;
  font-size: 150px;
  color: white;
  font-weight: bold;
}
#slogan-text {
  font-family: 'libre baskerville';
  margin-top: -40px;
  font-size: 30px;
}
#products {
  display: flex;
  justify-content: center;
  align-items: flex-start;
  background: linear-gradient(transparent 125px, white 125px);
  height: 600px;
}
#specials {
  display: flex;
  justify-content: center;
  align-items: flex-start;
  padding: 150px;
}
#visit {
  display: flex;
  justify-content: center;
  align-items: flex-start;
  padding: 100px;
}
</style>
