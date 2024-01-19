<template>
  <div id="servicesList">
    <div 
      class="service" 
      v-for="(service, i) in services" 
      :key="i"
      >
        <span class="service-title">
          {{ service.name }}
        </span>
        <span class="service-text">
          {{ service.description }}
        </span>
      <img :src="service.image"/>
    </div>
  </div>
</template>

<script>
export default {
  name: 'servicesList',
  props: {
    services: {
      required: true,
    }
  },
}
</script>

<style scoped>
  #servicesList {
    display: flex;
    width: 100%;
    background: #121212;
  }
  .service {
    display: flex;
    aspect-ratio: 1;
    flex: 1;
    position: relative;
    overflow: hidden;
    align-items: center;
    justify-content: space-around;
    flex-direction: column;
    user-select: none;
  }
  .service-title {
    font-weight: bolder;
    font-size: 50px;
    font-family: "HelveticaNeue";
    color: white;
    z-index: 2;
  }
  .service-text {
    font-size: 20px;
    font-family: "HelveticaNeue";
    color: white;
    width: 40%;
    text-align: center;
    z-index: 2;
  }
  .service img {
    height: 100%;
    width: 100%;
    position: absolute;
    object-fit: cover;
    filter: brightness(.3);
    transition: transform .3s;
    z-index: 0;
  }
  .service:hover img {
    transform: scale(1.3);
    filter: brightness(.2);
    cursor: pointer;
  }
</style>
