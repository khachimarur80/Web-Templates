<template>
  <div id="navbar" :class="show ? 'show' : 'hide'">
    <div class="navbar-icon">
    </div>
    <div class="navbar-contents">
      <span class="navbar-item" v-for="(item, i) in items" :key="i">
        {{ item.name }}
      </span>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NavBar',
  props: {
    show: {
      required: true
    }
  },
  data: ()=>({
    items: [
      {
        name: "Inicio",
      },
      {
        name: "Nosotros",
      },
      {
        name: "Servicios",
      },
      {
        name: "Productos",
      },
      {
        name: "Contacto",
      },
    ]
  }),
  mounted() {
  }
}
</script>

<style scoped>
  #navbar {
    height: fit-content;
    position: absolute;
    top: 0px;
    z-index: 4;
    display: flex;
    padding: 20px;
    transition: top 0.3s ease, opacity 0.3s ease;
    width: calc(100% - 20px);
  }
  .navbar-icon {
    height: 100px;
    width: 100px;
    background: url('@/assets/logo.png');
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .navbar-contents {
    margin-left: 30px;
    margin-right: 30px;
    flex: 1;
    display: flex;
    justify-content: flex-end;
    align-items: center;
    gap: 40px;
    padding: 20px;
  }
  .navbar-item {
    font-family: "HelveticaNeue";
    color: white;
    font-size: 20px;
    position: relative;
    user-select: none;
    cursor: pointer;
  }
  .navbar-item:after {
    content: '';
    height: 1px;
    width: 0px;
    position: absolute;
    bottom: 0px;
    left: 0px;
    background: white;
    transition: width .3s, right .3s;
  }
  .navbar-item:hover:after {
    width: 100%;
    right: 0px;
  }


  #navbar.show {
    background: #121212;
    position: fixed;
    top: -200px;
    opacity: 0;
    animation: fadeIn .5s forwards ease-out;
  }

  @keyframes fadeIn {
    to {
      top: 0;
      opacity: 1;
    }
  }

  .show .navbar-icon{
    border-color: white;
  }
  .show .navbar-item:after {
    background: white;
  }

  @media only screen and (max-width: 767px) {
    #navbar {
      flex-direction: column;
      align-items: center;
      background: #121212;
      padding-bottom: 5px;
    }
    .navbar-icon {
      height: 80px;
      width: 80px;
    }
    .navbar-contents {
      width: 100%;
      flex-wrap: wrap;
      justify-content: center;
      gap: 5px;
    }
    .navbar-item {
      font-size: 15px;
    }
  }
</style>
