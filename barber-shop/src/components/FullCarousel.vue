<template>
  <div id="carousel">
    <!--<div id="progress-bar">
    </div>-->
    <div :class="['slide', (i == iterationCount) ? 'active' : '']" v-for="(slide, i) in slides" :key="i" >
      <img 
        :src="slide.image" 
        class="slide-img" 
      >
      <span class="slide-letter">
        {{ slide.letter }}
      </span>
      <span class="slide-slogan">
        {{ slide.slogan }}
      </span>
    </div>
  </div>
</template>

<script>
export default {
  name: 'FullCarousel',
  props: {
    slides: {
      required: true,
    }
  },
  data: ()=>({
    iterationCount: 0,
  }),
  mounted() {
    setInterval(()=>{
      this.iterationCount = (this.iterationCount+1)%3
    }, 5000)
  }
}
</script>

<style scoped>
  #carousel {
    height: 100vh;
    width: 100h;
    overflow: hidden;
    user-select: none;
    position: relative;
  }

  @keyframes progressBar {
    0% {
      width: 10px;
    }
    100% {
      width: 100%;
    }
  }
  #progress-bar {
    height: 10px;
    background: white;
    animation-name: progressBar;
    animation-duration: 5s;
    animation-iteration-count: infinite;
    animation-timing-function: linear;
    opacity: .3;
    position: absolute;
    z-index: 2;
  }
  .slide-img {
    height: 100%;
    width: 100%;
    object-fit: cover;
    opacity: 0;
    transition: opacity 1s ease;
  }

  .active .slide-img {
    opacity: 1;
  }

  .slide {
    height: 100%;
    width: 100%;
    position: absolute;
    top: 0px;
    left: 0px;
    z-index: 0;
    opacity: 0;
    background: #121212;
  }
  .slide.active {
    z-index: 1;
    opacity: 1;
  }

  .active .slide-slogan, .active .slide-letter {
    display: block;
  }

  @keyframes sloganIn {
    0% {
      opacity: .2;
      transform: translateX(-100%);
    }
    20% {
      opacity: 1;
      transform: translateX(-50%);
    }
    100% {
      opacity: 1;
      transform: translateX(-50%);
    }
  }

  .slide-slogan {
    font-family: "Helvetica";
    font-size: 80px;
    text-align: center;
    width: 50%;
    color: white;
    opacity: 0;
    z-index: 2;
    position: absolute;
    display: none;
    top: 25%;
    left: 50%;
    transform: translate(-100%, -50%);
    animation-name: sloganIn;
    animation-duration: 5s;
    animation-iteration-count: infinite;
  }
  .slide-text {
    font-family: "Helvetica";
    font-size: 24px;
    color: white;
    z-index: 4;
    top: 10px;
    left: 10px;
    border: 1px solid red;
  }

  @keyframes bigLetterIn {
    0% {
      opacity: 0;
      transform: translate(-0%, -0%) rotate(-90deg);
    }
    20% {
      opacity: .1;
      transform: translate(-50%, -50%) rotate(0deg);
    }
    100% {
      opacity: .2;
      transform: translate(-50%, -50%) rotate(0deg);
    }
  }

  .slide-letter {
    font-family: "Helvetica";
    font-size: 70vh;
    color: #ddd;
    opacity: 0;
    z-index: 2;
    position: absolute;
    top: 50%;
    display: none;
    left: 50%;
    transform: translate(-0%, -0%) rotate(-90deg);
    font-weight: bold;
    animation-name: bigLetterIn;
    animation-duration: 5s;
    animation-iteration-count: infinite;
  }

  @media only screen and (max-width: 767px) {
    .slide-letter {
      font-size: 150px;
    }
    .slide-slogan {
      top: 40%;
      width: 100%;
      font-size: 40px;
    }
  }
</style>
