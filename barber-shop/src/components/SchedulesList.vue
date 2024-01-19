<template>
  <div id="scheduleslist">
    <div id="scheduleslist-background">
    </div>
    <div class="schedule">
      <div class="section-icon">
      </div>
      <div class="section-title">
        Horario
      </div>
      <br>
      <div class="line"></div>
      <div class="schedule-row">
        <span>lunes - viernes</span>
        <span>10:00 - 20:30</span>
      </div>
      <div class="line"></div>
      <div class="schedule-row">
        <span>sábado</span>
        <span>10:00 - 14:00 / 16:00 - 20:00</span>
      </div>
      <div class="line"></div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'SchedulesList',
  props: {
  },
  data: ()=>({
  }),
  mounted() {
  }
}
</script>

<style scoped>
  #scheduleslist {
    width: 100%;
    height: 600px;
    position: relative;
    overflow: hidden;
    display: flex;
    justify-content: center;
    gap: 40px;
    align-items: center;
    flex-direction: column;
  }
  #scheduleslist-background {
    width: 100%;
    height: 100%;
    position: absolute;
    background: url('@/assets/images/barbershop.webp');
    z-index: 0;
    filter: blur(10px) saturate(0) brightness(.5);
    transform: scale(1.1);
  }
  .schedule {
    display: flex;
    justify-content: center;
    gap: 40px;
    align-items: center;
    flex-direction: column;
    width: 400px;
    z-index: 1;
    padding: 50px;
  }
  .section-icon {
    height: 80px;
    width: 80px;
    border: 1px solid yellow;
    z-index: 1;
  }
  .section-title {
    color: white;
    font-family: "HelveticaNeue";
    font-weight: bold;
    font-size: 50px;
    z-index: 1;
  }
  .schedule-row {
    display: flex;
    justify-content: space-between;
    font-family: "HelveticaNeue";
    font-weight: bold;
    font-size: 20px;
    z-index: 1;
    width: 100%;
    color: white;
  }
  .line {
    width: 100%;
    height: 1px;
    background: #aaa;
  }
</style>
