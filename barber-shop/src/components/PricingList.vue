<template>
  <div id="pricinglist">
    <div class="pricing">
      <div class="section-icon">
      </div>
      <div class="section-title">
        Nuestros precios
      </div>
      <div class="section-text">
        Nuestra relación calidad/precio es inmejorable, nadie te ofrece unos servicios tan cuidados a un precio tan competente… salvo nosotros.
      </div>
      <br>
      <div class="prices">
        <div class="price" v-for="(product, i) in products" :key="i">
          <div>
            <span class="product">
              {{ product.name }}
            </span>
            <span class="price-value">
              {{ product.price }} €
            </span>
          </div>
          <div class="price-description">
            {{ product.description }}
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'SchedulesList',
  props: {
    products: {
      required: true,
    }
  },
  data: ()=>({
  }),
  mounted() {
  }
}
</script>

<style scoped>
  #pricinglist {
    width: 100h;
    position: relative;
    overflow: hidden;
    display: flex;
    justify-content: center;
    gap: 40px;
    align-items: center;
    flex-direction: column;
    background: #161616;
    padding: 50px;
  }
  .pricing {
    display: flex;
    gap: 40px;
    align-items: center;
    flex-direction: column;
    z-index: 1;
  }
  .section-icon {
    height: 80px;
    width: 80px;
    border: 1px solid yellow;
    z-index: 1;
    display: none;
  }
  .section-title {
    color: white;
    font-family: "HelveticaNeue";
    font-weight: bold;
    font-size: 50px;
    z-index: 1;
  }
  .section-text {
    font-family: "HelveticaNeue";
    width: 600px;
    font-size: 18px;
    text-align: center;
    color: rgb(98, 95, 95);
    line-height: 30px;
  }
  .prices {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: flex-start;
    width: 80%;
    margin: 0 auto;
  }

  .price {
    box-sizing: border-box; 
    flex: 0 1 calc(33% - 10px); 
    margin-bottom: 20px;
    padding: 20px;
    border: 1px solid #333;
    border-radius: 5px;
    height: 150px;
    display: flex;
    flex-direction: column;
    gap: 20px;
  }
  .price div:nth-child(1) {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .product {
    font-family: "HelveticaNeue";
    font-weight: bold;
    font-size: 20px;
    color: white;
  }
  .price-value {
    color: gold;
    font-family: "HelveticaNeue";
    font-weight: bold;
    font-size: 14px;
    width: 40px;
  }
  .price-description {
    font-family: "HelveticaNeue";
    font-size: 16px;
    color: rgb(98, 95, 95);
  }
  @media only screen and (max-width: 767px) {
    .section-title {
      font-size: 30px;
    }
    .section-text {
      width: 100%;
    }
    .price {
      width: 100%;
    }
    .prices {
      flex-direction: column;
      width: 100%;
    }
  }
</style>
