<template>
  <div id="navbar">
    <div class="navbar-icon">
      <img :src="data.icon" height="100%" :alt="'Logo de '+data.name"/>
    </div>
    <div class="navbar-title">
      {{ data.name }}
    </div>
    <div class="spacer">
    </div>
    <div class="navbar-items">
      <a class="navbar-item" v-for="(item, i) in data.items" :key="i" @click="scrollToSection(item)">
        {{ item }}
      </a>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vNavbar',
  props: {
    data: {
      required: true,
    }
  },
  methods: {
    scrollToSection(item) {
      let home = document.getElementById('home')
      let target = document.getElementById(item.toLowerCase())
      home.scrollTop = target.offsetTop - 100
    }
  }
}
</script>

<style scoped>
  #navbar {
    height: 100px;
    background: var(--primary);
    display: flex;
    position: fixed;
    top: 0px;
    left: 0px;
    width: 100%;
    z-index: 10;
  }
  .navbar-icon {
    height: calc(100% - 40px);
    aspect-ratio: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 20px;
    border-radius: 50%;
    overflow: hidden;
  }
  .navbar-title {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
    font-size: 30px;
    color: var(--text);
  }
  .spacer {
    flex: 1;
  }
  .navbar-items {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
    gap: 15px;
  }
  .navbar-item {
    cursor: pointer;
    text-decoration: none;
    color: var(--text);
  }
</style>