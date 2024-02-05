<template>
  <div id="servicios">
    <h1 class="services-header">
      Servicios
    </h1>
    <div class="service-contents">
      <div class="service" v-for="(service, i) in data" :key="i">
        <div class="service-image">
          <img :src="service.image" width="100%" :alt="'Imagen de '+service.name"/>
        </div>
        <div class="service-info">
          <h3 class="service-name">{{ service.name }}</h3> 
          <p class="service-description">{{ service.description }}</p>
          <div class="service-price">
            <button>
              {{ service.price }}
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vServices',
  data: () => ({
    data: [
      {
        name: "Corte de Pelo Unisex",
        description: "Transforma tu estilo con un corte de pelo moderno y personalizado que se adapte a tu personalidad y preferencias.",
        price: "15 €",
        image: require("@/assets/images/corte_unisex.webp"),
      },
      {
        name: "Coloración Express",
        description: "Añade un toque de color a tu vida con nuestra coloración express. Cambia tu look de forma rápida y vibrante.",
        price: "11 €",
        image: require("@/assets/images/coloracion_express.webp"),
      },
      {
        name: "Tratamiento Capilar Profundo",
        description: "Revitaliza y nutre tu cabello con nuestro tratamiento capilar profundo. Devuelve la vitalidad y el brillo a tu melena.",
        price: "9 €",
        image: require("@/assets/images/tratamiento_capilar.webp"),
      },
      {
        name: "Peinados de Fiesta",
        description: "Prepárate para eventos especiales con un peinado de fiesta espectacular. Desde recogidos elegantes hasta ondas glamorosas.",
        price: "20 €",
        image: require("@/assets/images/peinado_fiesta.webp"),
      },
      {
        name: "Alisado Térmico",
        description: "Obtén un cabello suave y liso con nuestro servicio de alisado térmico. Despídete del frizz y disfruta de un cabello sedoso.",
        price: "25 €",
        image: require("@/assets/images/alisado_termico.webp"),
      }
    ]
  })
}
</script>

<style scoped>
  #servicios {
    padding-top: 50px;
    width: 100h;
    height: fit-content;
  }
  .services-header {
    width: 100%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
  }
  .service {
    aspect-ratio: 2/3;
    border: 1px solid var(--primary);
    width: 330px;
    border-radius: 20px;
    background: var(--background);
  }
  .service-contents {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    gap: 20px;
  }
  .service-image {
    aspect-ratio: 1;
    width: 80%;
    margin: 10%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 0px;
    border-radius: 10px;
    overflow: hidden;
  }
  .service-info {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  .service-name {
    text-align: center;
    margin-bottom: 0px;
  }
  .service-description {
    margin-left: 5%;
    margin-right: 5%;
    text-align: center;
  }
  .service-price {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 10px;
    padding-bottom: 20px;
  }
  .service-price button {
    padding: 20px;
    padding-top: 8px;
    padding-bottom: 8px;
    border-radius: 10px;
    border: none;
    border: 1px solid var(--primary);
    background: var(--background);
    cursor: pointer;
  }

  .service-price button:hover {
    background: var(--primary);
    color: var(--text-light);
  }
</style>