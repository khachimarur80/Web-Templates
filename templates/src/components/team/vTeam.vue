<template>
  <div id="equipo">
    <h1 class="team-header">
      Equipo
    </h1>
    <div class="members">
      <button @click="scrollLeft">
        <img src="@/assets/icons/chevron-left.svg" height="30px" width="30px"/>
      </button>
      <div class="members-contents" ref="members">
        <div class="member" v-for="(member, i) in data" :key="i">
          <div class="image" :style="{ backgroundImage : 'url('+member.image + ')' }">
          </div>
          <h3 class="name">{{ member.name }}</h3>
          <span class="since">Desde {{ member.date }}</span>
          <div class="occupations">
            <span class="ocupation" v-for="(occupation, i) in member.occupations" :key="i">
              {{ occupation }}
            </span>
          </div>
        </div>
      </div>
      <button @click="scrollRight">
        <img src="@/assets/icons/chevron-right.svg" height="30px" width="30px"/>
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vTeam',
  data: () => ({
    data: [
      {
        image: require('@/assets/images/peluquero4.webp'),
        date: '03/02/2024',
        name: 'Ana García',
        occupations: ['Estilista de Color', 'Especialista en Cortes'],
      },
      {
        image: require('@/assets/images/peluquero2.webp'),
        date: '03/02/2024',
        name: 'Carlos Martínez',
        occupations: ['Estilista de Peinados'],
      },
      {
        image: require('@/assets/images/peluquero3.webp'),
        date: '03/02/2024',
        name: 'Elena Rodríguez',
        occupations: ['Maquilladora', 'Estilista de Color', 'Especialista en Cortes'],
      },
      {
        image: require('@/assets/images/peluquero1.webp'),
        date: '03/02/2024',
        name: 'Javier López',
        occupations: ['Especialista en Cortes', 'Barbero'],
      },
      {
        image: require('@/assets/images/peluquero5.webp'),
        date: '03/02/2024',
        name: 'Laura Sánchez',
        occupations: ['Maquilladora', 'Estilista de Color', 'Especialista en Peinados'],
      },
    ]
  }),
  methods: {
    scrollLeft() {
      this.$refs.members.scrollLeft -= 310
    },
    scrollRight() {
      this.$refs.members.scrollLeft += 310
    }
  },
}
</script>

<style scoped>
  #equipo {
    padding: 50px;
    width: 100h;
  }
  .team-header {
    width: 100%;
    text-align: center;
    margin-bottom: 50px;
  }
  .members {
    width: 90%;
    margin-left: 5%;
    display: flex;
    align-items: center;
  }
  .members button {
    height: 30px;
    width: 30px;
    border: 1px solid var(--text);
    border-radius: 50%;
    cursor: pointer;
    background: var(--background);
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .members button:hover {
    filter: brightness(.9);
  }

  .members-contents {
    display: flex;
    overflow-x: hidden;
    white-space: nowrap;  
    width: calc(100% - 100px);
    margin-left: 50px;
    margin-right: 50px;
    scroll-behavior: smooth;
    padding-left: 5px;
    padding-right: 5px;
  }
  .member {
    display: inline-flex;
    min-width: 250px;
    height: 440px;
    flex-direction: column;
    align-items: center;
    margin-left: 5px;
    margin-right: 5px;
    overflow: hidden;
    background: var(--background);
    border-radius: 10px;
  }
  .since {
    margin-top: -20px;
    font-size: 14px;
    color: var(--text-light);
    filter: brightness(.5);
  }
  .occupations {
    padding-top: 20px;
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    width: 90%;
    justify-content: center;
  }
  .ocupation {
    border: 1px solid var(--primary);
    padding: 3px;
    padding-left: 5px;
    padding-right: 5px;
    border-radius: 5px;
    color: var(--primary);
    font-size: 14px;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .image {
    width: 100%;
    aspect-ratio: 1;
    background-size: cover;
  }
</style>