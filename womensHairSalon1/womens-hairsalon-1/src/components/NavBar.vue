<template>
  <div id="navBar">
    <div class="navBarTitle">
      <span style="font-size: 40px;">
        LINDA 
      </span>
      <span style="font-size: 25px; margin: 5px;">
        &
      </span>
      <span style="font-size: 40px;">
        C
      </span>
      <span style="font-size: 32px; margin: 5px; margin-top: -4px; text-decoration: underline; text-underline-offset: 3px; text-decoration-thickness: 2px;">
        o
      </span>
    </div>
    <div class="navBarItems">
      <span class="navBarItem">
        Inicio
      </span>
      <span class="navBarItem">
        Servicios
      </span>
      <span class="navBarItem">
        Especiales
      </span>
      <span class="navBarItem">
        Reservar Online
      </span>
      <span class="navBarItem">
        Contacto
      </span>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NavBar',
  props: {
  }
}
</script>

<style scoped>
  #navBar {
    height: 60px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
  }
  .navBarTitle {
    width: fit-content;
    font-family: 'libre baskerville';
    display: flex;
    align-items: flex-start;
  }
  .navBarItems {
    flex: 1;
    display: flex;
    justify-content: flex-end;
  }
  .navBarItem {
    padding: 10px;
    font-weight: 100 !important;
    user-select: none;
    cursor: pointer;
  }
  .navBarItem:hover {
    color: #FAB89D;
  }
</style>
