<template>
  <div id="visitUs">
    <div class="line" style="background: white;"></div>
    <div class="visitus-title">
      Visítanos
    </div>
    <span class="info-piece">
      Av. Los Rosales 122,  28021, Madrid.
    </span>
    <span class="info-piece">
      info@misitio.com  \  Tel: 914-123-456
    </span>
    <br><br>
    <span class="info-piece" style="text-transform: uppercase;">
      HORARIO DE TRABAJO
    </span>
    <span class="info-piece">
      Lun- Vier: 7am - 10pm  \ Sábado: 8am - 10pm  \  Domingo: 8am - 11pm
    </span>

    <span class="location">
      Ver ubicacion
    </span>
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
  #visitUs {
    background: black;
    width: 500px;
    height: fit-content;
    padding: 50px;
    color: white;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  .visitus-title {
    font-size: 70px;
    width: 60%;
    font-family: 'Great Vibes', cursive;
    font-weight: bold;
    line-height: 60px;
    margin-bottom: 10px;
  }
  .line {
    height: 3px;
    width: 30px;
    margin-bottom: 20px;
  }
  .info-piece {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 30px;
    font-family: 'HelveticaNeue-Thin';
    font-size: 16px;
  }
  .location {
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
    color: #FAB89D;
  }
  .location:hover {
    color: #white;
  }
</style>
