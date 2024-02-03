<template>
  <div id="testimonials">
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
  props: {
    data: {
      required: true,
    }
  }
}
</script>

<style scoped>
  #testimonials {
    width: 100h;
    padding: 50px;
  }
  .testimonials-header {
    width: 100%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
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
    height: 310px;
    background: var(--text-light);
    position: relative;
    border-radius: 10px;
  }
  .text {
    height: 50%;
    text-align: justify;
    padding: 20px;
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
</style>