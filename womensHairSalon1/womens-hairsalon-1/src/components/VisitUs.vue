<template>
  <div id="specialsList">
    <div class="line" style="background: white;"></div>
    <div class="specials-title">
      Especiales de invierno
    </div>
    <br>
    <div class="special" v-for="(special, i) in specials" :key="i">
      <span> {{ special.name }} </span>
      <span style="font-size: 20px"> €{{ special.pricing }} </span>
    </div>
    <div class="reserve">
      Reservar Turno
    </div>
  </div>
</template>

<script>
export default {
  name: 'SpecialsList',
  props: {
    specials: {
      required: true
    }
  }
}
</script>

<style scoped>
  #specialsList {
    background: black;
    width: 500px;
    height: fit-content;
    padding: 50px;
    color: white;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  .specials-title {
    font-size: 70px;
    width: 60%;
    font-family: 'Great Vibes', cursive;
    font-weight: bold;
    line-height: 60px;
    margin-bottom: 60px;
  }
  .line {
    height: 3px;
    width: 30px;
    margin-bottom: 20px;
  }
  .special {
    width: 80%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 50px;
    font-family: 'HelveticaNeue-Thin';
    font-size: 20px;
    font-weight: 100 !important;
    text-transform: uppercase;
  }
  .reserve {
    width: 80%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: 'HelveticaNeue-Thin';
    font-size: 16px;
    font-weight: 100 !important;
    text-transform: uppercase;
    user-select: none;
    margin-top: 60px;
    margin-bottom: 60px;
    cursor: pointer;
  }
  .reserve:hover {
    color: #FAB89D;
  }
</style>
