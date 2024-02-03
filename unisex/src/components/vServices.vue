<template>
  <div id="services">
    <h1 class="services-header">
      Servicios
    </h1>
    <div class="service-contents">
      <div class="service" v-for="(service, i) in data" :key="i">
        <div class="service-image">
          <img :src="service.image" height="100%" :alt="'Imagen de '+service.name"/>
        </div>
        <div class="service-info">
          <h1 class="service-name">{{ service.name }}</h1> 
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
  props: {
    data: {
      required: true
    }
  },
}
</script>

<style scoped>
  #services {
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
    width: 300px;
    border-radius: 20px;
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
    background: red;
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