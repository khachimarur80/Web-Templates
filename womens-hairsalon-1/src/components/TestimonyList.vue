<template>
  <div id="testimoniesList">
    <div class="line" style="background: black;"></div>
    <div class="testimonies-title">
      Testimonios 
    </div>
    <div class="testimonies-list">
      <div class="testimony" v-for="(testimony, i) in testimonies" :key="i">
        <div class="quote">"</div>
        <div class="testimony-text">
          {{ testimony.testimony }}
        </div>
        <div class="testimony-client">
          <span class="testimony-name">{{ testimony.name }}</span>,
          <span class="testimony-occupation">{{ testimony.occupation }}</span>
        </div>
      </div>
    </div>
    <br>
  </div>
</template>

<script>
export default {
  name: 'TestimonyList',
  props: {
    testimonies: {
      required: true
    }
  }
}
</script>

<style scoped>
  #testimoniesList {
    background: white;
    width: 100h;
    height: fit-content;
    color: white;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 50px;
    padding-top: 150px;
    padding-bottom: 150px;
  }
  .testimonies-title {
    font-size: 70px;
    width: 60%;
    font-family: 'Great Vibes', cursive;
    font-weight: bold;
    margin-bottom: 60px;
    color: black;
  }
  .line {
    height: 3px;
    width: 30px;
    margin-bottom: 20px;
  }

  .testimonies-list {
    width: 100%;
    display: flex;
    justify-content: space-around;
  }

  .testimony {
    height: 275px;
    width: 275px;
    color: black;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    font-family: 'HelveticaNeue-Thin';
  }

  .testimony-text {
    color: black;
    font-size: 18px;
  }
  .testimony-client {
    display: flex;
    justify-content: center;
  }
  .testimony-name {
    font-weight: bold;
  }
  .testimony-occupation {
    margin-left: 10px;
    font-style: italic;
    font-weight: 200;
  }
  .quote {
    font-family: 'libre baskerville', serif;
    font-weight: bolder;
    font-size: 50px;
    line-height: 20px;
  }
</style>
