<template>
  <div class="parallax-container">
    <div class="parallax" ref="parallaxContainer">
      <div
        class="parallax-image"
        v-for="image in images"
        :key="image"
        :style="{ backgroundImage: 'url(' + image + ')' }"
      ></div>
    </div>
    <div class="content" ref="pageContents" @scroll="handleContentScroll">
      <slot></slot>
    </div>
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
  data() {
    return {
      parallaxContainer: null,
      animationFrameId: null,
    };
  },
  mounted() {
    this.parallaxContainer = this.$refs.parallaxContainer;
  },
  methods: {
    handleContentScroll() {
      if (!this.animationFrameId) {
        this.animationFrameId = requestAnimationFrame(() => {
          const contentScrollTop = this.$refs.pageContents.scrollTop;
          this.parallaxContainer.scrollTop = contentScrollTop*.9;
          this.animationFrameId = null;
        });
      }
    },
  },
};
</script>


<style scoped>
.parallax-container {
  position: relative;
  overflow: hidden;
  overflow: hidden;
  height: calc(100vh - 150px);
  scroll-behavior: smooth;
}

.parallax {
  width: 100%;
  height: 100%;
  overflow: hidden;
  position: absolute;
  z-index: -1;
}
.parallax-image {
  width: 100%;
  background-size: cover;
  background-position: 50% 50%;
}
.parallax-image:nth-child(1) {
  height: 550px;
}
.parallax-image:nth-child(2) {
  height: 820px;
}
.parallax-image:nth-child(3) {
  height: 800px;
}

.content {
  height: 100%;
  overflow-y: scroll;
  overflow-x: hidden;
  z-index: 1;
}
.content::-webkit-scrollbar {
  width: 8px;
  background: white;
}
.content::-webkit-scrollbar-thumb {
  background-color: #FAB89D;
  border-radius: 6px;
  border: 1px solid white;
}
</style>
