<template>
  <div id="productsList">
    <div 
      class="product" 
      v-for="(product, i) in products" 
      :key="i"
      :style="{
        'background' : product.color, 
        'color' : product.textColor
      }"
      >
      <div class="product-text">
        <div class="line" :style="{'background' : product.textColor}">
        </div>
        <div class="product-name">
          {{ product.name }}
        </div>
        <span 
          class="product-button"
          :style="{'--hover-color': product.hoverColor}"
        >
          Reservar
        </span>
      </div>
      <div class="product-image">
        <img height="100%" width="100%" :src="product.image" alt="Fuck you"/>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'productsList',
  props: {
    products: {
      required: true,
    }
  },
}
</script>

<style scoped>
  #productsList {
    display: grid;
    grid-template-rows: repeat(2, 1fr);
    grid-template-columns: repeat(2, 1fr);
    width: 1000px;
    height: 500px;
  }
  .product {
    display: flex;
  }
  .product:nth-child(3), .product:nth-child(4) {
    flex-direction: row-reverse;
  }
  .product-text {
    height: 250px;
    width: 250px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  .line {
    height: 3px;
    width: 30px;
    margin-bottom: 20px;
  }
  .product-name {
    margin-bottom: 40px;
    font-family: 'libre';
    font-size: 40px;
  }
  .product-button {
    font-size: 16px;
    text-transform: uppercase;
    font-family: 'HelveticaNeue-Thin';
    user-select: none;
    cursor: pointer;
  }
  .product-button:hover {
    color: var(--hover-color);
  }
  .product-image {
    height: 250px;
    width: 250px;
  }
</style>
