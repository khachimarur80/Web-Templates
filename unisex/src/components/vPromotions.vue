<template>
  <div id="promotions">
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
  props: {
    data: {
      required: true,
    }
  }
}
</script>

<style scoped>
  #promotions {
    width: 100h;
    padding: 50px;
  }
  .promotions-header {
    width: 100%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
  }
  .promotion {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 400px;
    padding-left: 50px;
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
</style>