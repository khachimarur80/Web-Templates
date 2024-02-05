<template>
  <div 
    class="parallax" 
    ref="parallaxContainer">

    <div :style="{ backgroundImage: 'url(' + parallax.lazy + ')' }" class="parallax-image" loading="lazy"></div>

    <div ref="highResImage" :style="{ backgroundImage: 'url(' + parallax.image + ')' }" class="parallax-image" loading="lazy" style="display: none;"></div>
  </div>
</template>

<script>
export default {
  name: 'vParallax',
  props: {
    images: {
      required: true,
      type: Array,
    },
  },
  data: () => ({
    animationFrameId: null,
    parallax: {
      image: require('@/assets/images/parallax.webp'),
      lazy: require('@/assets/images/parallax-lazy.webp')
    },
  }),
  methods: {
    handleScroll() {
  if (!this.animationFrameId) {
    this.animationFrameId = requestAnimationFrame(() => {
      const container = document.getElementById('home');
      const contentScrollTop = container.scrollTop;

      // Check if the scroll is triggered by an anchor link click
      const anchorLink = document.querySelector(':target');
      const isAnchorLinkClick = anchorLink && anchorLink.tagName === 'A';

      if (!isAnchorLinkClick) {
        // Adjust scroll position for parallax effect
        this.$refs.parallaxContainer.scrollTop = contentScrollTop * 0.1;
      }

      // Reset animation frame ID for the next frame
      this.animationFrameId = null;
    });
  }
}

  },
  mounted() {
    document.getElementById('home').addEventListener('scroll', this.handleScroll)

    const highResImage = this.$refs.highResImage;
    if (highResImage) {
      highResImage.addEventListener('load', () => {
        highResImage.style.display = 'block';
        this.$el.querySelector('.parallax-image-low-res').style.display = 'none';
      });
    }
  },
};
</script>


<style scoped>
  .parallax {
    width: 100%;
    height: 100%;
    overflow: hidden;
    position: absolute;
    z-index: -1;
    filter: brightness(1.05);
  }
  .parallax-image {
    height: 1100px;
    background-size: cover;
    background-position: 50% 50%;
  }
</style>
