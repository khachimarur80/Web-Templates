<template>
  <div id="testimonios">
    <h1 class="testimonials-header">
      Testimonios
    </h1>
    <div class="testimonials">
      <div class="testimony" v-for="(testimony, i) in data" :key="i">
        <div class="text">
          {{ testimony.opinion }}
        </div>
        <div class="date">
          {{ testimony.date }}
        </div>
        <div class="name">
          {{ testimony.name }}
        </div>
        <div class="rate">
          {{ testimony.rate }}/5
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vTestimonials',
  data: () => ({
    data: [
      {
        name: "Ana García",
        date: '15/02/2024',
        rate: 5,
        opinion: "¡Una experiencia increíble! Me encantó el servicio y la atención al cliente. Definitivamente volveré.",
      },
      {
        name: "Juan Martínez",
        date: '16/02/2024',
        rate: 4,
        opinion: "Buen servicio en general. El personal es amable y profesional. ¡Recomendaré a mis amigos!",
      },
      {
        name: "María López",
        date: '17/02/2024',
        rate: 5,
        opinion: "El mejor lugar para relajarse. El ambiente es perfecto y los tratamientos son maravillosos. ¡Volveré pronto!",
      },
    ]
  })
}
</script>

<style scoped>
  #testimonios {
    width: 100h;
    padding: 50px;
    background: url('@/assets/images/fondo4.jpg');
    background-size: cover;
  }
  .testimonials-header {
    width: 100%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
    color: var(--text-light);
  }
  .testimonials {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 30px;
  }
  .testimony {
    width: 33%;
    margin: 20px;
    height: 230px;
    background: var(--primary);
    position: relative;
    border-radius: 10px;
    color: var(--text);
    box-shadow: 0px 0px 4px 1px var(--text);
  }
  .text {
    text-align: justify;
    padding: 20px;
    height: 30%;
  }
  .date {
    width: 100%;
    text-align: center;
    margin-top: 10px;
    margin-bottom: 10px;
    font-size: 14px;
  }
  .name {
    width: 100%;
    text-align: center;
    margin-top: 30px;
    margin-bottom: 10px;
    font-weight: bold;
  }
  .rate {
    width: calc(100% - 15px);
    text-align: end;
  }

  @media only screen and (max-width: 767px) {
    .testimonials {
      flex-direction: column;
      padding: 0px;
    }
    .text {
      height: fit-content;
      text-align: center;
    }
    .testimony {
      width: 100%;
      height: fit-content;
      padding-bottom: 10px;
    }
  }
</style>