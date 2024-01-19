<template>
  <button id="gototop" :class="show ? 'show' : ''" @click="scrollTop">
  </button>
</template>

<script>
export default {
  name: 'NavBar',
  props: {
    show: {
      required: true
    }
  },
  methods: {
    scrollTop() {
      document.getElementById('app').scrollTo({
        top: 0,
        behavior: 'smooth'
      });
    }
  }
}
</script>

<style scoped>
  #gototop {
    position: fixed;
    bottom: 30px;
    right: 30px;
    height: 50px;
    width: 50px;
    background: white;
    cursor: pointer;
    opacity: 0;
    transition: opacity .3s;
    border: none;
    background: url("@/assets/images/gototop.png");
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
  }
  #gototop.show {
    opacity: 1;
  }
  #gototop:hover {
    filter: brightness(.5);
  }
</style>
