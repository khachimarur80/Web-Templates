<template>
  <div id="promociones">
    <h1 class="promotions-header">
      Promociones
    </h1>
    <div class="promotion">
      <div class="promotion-info">
        <h2>
          {{ data.name }}
        </h2>
        <hr style="width: 80%">
        <p class="date">Hasta el {{ data.date }}!</p>
        <p>{{ data.description }}</p>

      </div>
      <div class="promotion-image">
        <img :src="data.image" height="100%"/>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vPromotions',
  data: () => ({
    data: {
      name: 'Oferta Especial de San Valentín',
      description: '¡Celebra el amor con nuestra oferta especial de San Valentín! Sorprende a tu ser querido con tratamientos exclusivos, descuentos especiales y regalos encantadores. Disfruta de un día inolvidable juntos. Reserva ahora y crea recuerdos que durarán toda la vida.',
      date: '17/02/2024',
      image: require('@/assets/images/sanvalentin.webp'),
    },
  })
}
</script>

<style scoped>
  #promociones {
    width: 100h;
    background: url('@/assets/images/fondo5.jpg');
    background-size: cover;
    background-position: center;
    padding: 50px;
  }
  .promotions-header {
    width: 100%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
    color: var(--text-light);
  }
  .promotion {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 400px;
    padding-left: 50px;
    color: var(--text-light);
  }

  .promotion-info {
    width: 35%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  h2 {
    text-align: end;
    width: 80%;
    margin-bottom: 0px;
  }
  .date {
    text-align: end;
    width: 80%;
    margin-top: 5px;
    font-size: 15px;
  }
  .promotion-image {
    height: 100%;
    width: 65%;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  img {
    border-radius: 50px;
    overflow: hidden;
  }
</style>