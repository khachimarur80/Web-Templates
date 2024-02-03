<template>
  <div id="gallery">
    <h1 class="gallery-header">
      Galería
    </h1>
    <div class="gallery-contents">
      <div class="gallery-image" v-for="(image, i) in data" :key="i">
        <img :src="image.image" height="100%" :alt="'Imagen de '+image.name"/>
        <div class="gallery-image-info">
          <p class="name">{{ image.name }}</p>
          <p class="client">{{ image.client }}</p>
          <p class="date">{{ image.date }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vGallery',
  props: {
    data: {
      required: true
    }
  },
}
</script>

<style scoped>
  #gallery {
    width: 100h;
    padding-bottom: 50px;
  }
  .gallery-header {
    width: 100%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
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
    z-index: -1;
  }
  .gallery-image-info {
    z-index: 1;
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
    color: var(--text);
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
  }
  .client {
    transform: translateY(100px);
    transition: transform .3s ease-out;
  }
  .gallery-image:hover {
    box-shadow: 1px 2px 4px 1px #888;
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