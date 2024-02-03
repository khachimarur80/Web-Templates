<template>
  <div id="team">
    <h1 class="team-header">
      Equipo
    </h1>
    <div class="members">
      <button @click="scrollLeft">
      </button>
      <div class="members-contents" ref="members">
        <div class="member" v-for="(member, i) in data" :key="i">
          <img :src="member.image" width="100%">
          <h2 class="name">{{ member.name }}</h2>
          <span class="since">Desde {{ member.date }}</span>
          <div class="occupations">
            <span class="ocupation" v-for="(occupation, i) in member.occupations" :key="i">
              {{ occupation }}
            </span>
          </div>
        </div>
      </div>
      <button @click="scrollRight">
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vTeam',
  props: {
    data: {
      required: true
    }
  },
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
  #team {
    padding: 50px;
    width: 100h;
  }
  .team-header {
    width: 100%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
  }
  .members {
    width: 100%;
    display: flex;
    align-items: center;
  }
  .members button {
    height: 30px;
    width: 30px;
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
    height: 400px;
    flex-direction: column;
    align-items: center;
    padding-left: 5px;
    padding-right: 5px;
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
</style>