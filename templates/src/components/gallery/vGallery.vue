<template>
  <div id="galería">
    <h1 class="gallery-header">
      Galería
    </h1>
    <div class="gallery-contents">
      <div class="gallery-image" v-for="(image, i) in data" :key="i">
        <img :src="image.image" height="100%" :alt="'Imagen de '+image.name" style="aspect-ratio: 1; object-fit: cover;"/>
        <div class="gallery-image-info">
          <p class="name">{{ image.name }}</p>
          <p class="date">{{ image.date }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vGallery',
  data: () => ({
    data: [
      {
        "image": require('@/assets/images/peinado1.webp'),
        "client": "Ana López",
        "date": "15/08/2023",
        "name": "Ana López"
      },
      {
        "image": require('@/assets/images/peinado2.webp'),
        "client": "Elena García",
        "date": "27/04/2023",
        "name": "Elena García"
      },
      {
        "image": require('@/assets/images/peinado3.webp'),
        "client": "Isabel Fernández",
        "date": "09/12/2022",
        "name": "Isabel Fernández"
      },
      {
        "image": require('@/assets/images/peinado4.webp'),
        "client": "Luisa Pérez",
        "date": "03/06/2023",
        "name": "Luisa Pérez"
      },
      {
        "image": require('@/assets/images/peinado5.webp'),
        "client": "Carlos Ruiz",
        "date": "21/09/2022",
        "name": "Carlos Ruiz"
      },
      {
        "image": require('@/assets/images/peinado6.webp'),
        "client": "Miguel Rodríguez",
        "date": "15/11/2023",
        "name": "Miguel Rodríguez"
      },
      {
        "image": require('@/assets/images/peinado7.webp'),
        "client": "María Torres",
        "date": "18/04/2022",
        "name": "María Torres"
      },
      {
        "image": require('@/assets/images/peinado8.webp'),
        "client": "Javier Gómez",
        "date": "07/07/2023",
        "name": "Javier Gómez"
      },
      {
        "image": require('@/assets/images/peinado9.webp'),
        "client": "Francisco Sánchez",
        "date": "30/01/2024",
        "name": "Francisco Sánchez"
      }
    ]
  })
}
</script>

<style scoped>
  #galería {
    width: 100h;
    padding-bottom: 50px;
    padding-top: 50px;
    background: var(--primary);
  }
  .gallery-header {
    width: 100%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
    color: var(--text-light);
  }
  .gallery-contents {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 15px;
  }
  .gallery-image {
    aspect-ratio: 1;
    position: relative;
    height: 300px;
    overflow: hidden;
    transition: box-shadow .15s ease-out;
  }
  .gallery-image img {
    position: absolute;
    top: 0;
    left: 0;
    z-index: 0;
    user-select: none;
  }
  .gallery-image-info {
    z-index: 2;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-end;
    height: 100%;
    opacity: 0;
    transition: opacity .3s ease-out;
  }
  .date {
    font-size: 14px;
    color: var(--text-light);
    position: absolute;
    top: 10px;
    right: 10px;
    margin: 0px;
    transform: translateY(-30px);
    transition: transform .3s ease-out;
  }
  .name {
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, calc(-50% + 100px));
    margin: 0px;
    transition: transform .3s ease-out;
    color: var(--text-light);
  }
  .client {
    transform: translateY(100px);
    transition: transform .3s ease-out;
    color: var(--text-light);
  }
  .gallery-image img {
    transition: filter .2s ease-out, transform .2s ease-out;
  }
  .gallery-image:hover img {
    filter: brightness(.8) blur(2px);
    transform: scale(1.3);
  }
  .gallery-image:hover .gallery-image-info {
    opacity: 1;
  }
  .gallery-image:hover .date {
    transform: none;
  }
  .gallery-image:hover .client {
    transform: none;
  }
  .gallery-image:hover .name {
    transform: translate(-50%, -50%);
  }
</style>