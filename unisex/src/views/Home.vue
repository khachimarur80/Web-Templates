<template>
  <div id="home">
    <vBanner :data="banner"/>
    <vServices :data="services"/>
    <vTeam :data="team"/>
    <vGallery :data="gallery"/>
    <vInfo/>
    <vPromotions :data="promotions"/>
    <vTestimonials :data="testimonials"/>
    <vContact/>
    <vFooter :data="footer"/>
  </div>
</template>
<script>

import vBanner from '@/components/vBanner'
import vServices from '@/components/vServices'
import vTeam from '@/components/vTeam'
import vGallery from '@/components/vGallery'
import vInfo from '@/components/vInfo'
import vPromotions from '@/components/vPromotions'
import vTestimonials from '@/components/vTestimonials'
import vContact from '@/components/vContact'
import vFooter from '@/components/vFooter'

export default {
  name: 'vHome',
  components: {
    vBanner,
    vServices,
    vTeam,
    vGallery,
    vInfo,
    vPromotions,
    vTestimonials,
    vContact,
    vFooter,
  },
  data: () => ({
    banner: {
      title: 'Lorem ipsum dolor',
      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien.',
      image: require('@/assets/sample.png'),
    },
    services: [
      {
        name: "Servicio 1",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien.",
        price: "15 €",
        image: require("@/assets/sample.png"),
      },
      {
        name: "Servicio 2",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien.",
        price: "11 €",
        image: require("@/assets/sample.png"),
      },
      {
        name: "Servicio 3",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien.",
        price: "9 €",
        image: require("@/assets/sample.png"),
      },
      {
        name: "Servicio 4",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien.",
        price: "20 €",
        image: require("@/assets/sample.png"),
      },
      {
        name: "Servicio 5",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien.",
        price: "25 €",
        image: require("@/assets/sample.png"),
      }
    ],
    team: [
      {
        image: require('@/assets/sample.png'),
        date: '03/02/2024',
        name: 'Lorem Ipsum 1',
        occupations: ['Lorem Ipsum', 'Lorem Ipsum'],
      },
      {
        image: require('@/assets/sample.png'),
        date: '03/02/2024',
        name: 'Lorem Ipsum 2',
        occupations: ['Lorem Ipsum'],
      },
      {
        image: require('@/assets/sample.png'),
        date: '03/02/2024',
        name: 'Lorem Ipsum 3',
        occupations: ['Lorem Ipsum', 'Lorem Ipsum', 'Lorem Ipsum'],
      },
      {
        image: require('@/assets/sample.png'),
        date: '03/02/2024',
        name: 'Lorem Ipsum 4',
        occupations: ['Lorem Ipsum', 'Lorem Ipsum'],
      },
      {
        image: require('@/assets/sample.png'),
        date: '03/02/2024',
        name: 'Lorem Ipsum 5',
        occupations: ['Lorem Ipsum', 'Lorem Ipsum', 'Lorem Ipsum'],
      },
    ],
    gallery: [
      {
        image: require('@/assets/sample.png'),
        client: 'Lorem Ipsum Dolor',
        date: '03/02/2024',
        name: 'Lorem Ipsum',
      },
      {
        image: require('@/assets/sample.png'),
        client: 'Lorem Ipsum Dolor',
        date: '03/02/2024',
        name: 'Lorem Ipsum',
      },
      {
        image: require('@/assets/sample.png'),
        client: 'Lorem Ipsum Dolor',
        date: '03/02/2024',
        name: 'Lorem Ipsum',
      },
      {
        image: require('@/assets/sample.png'),
        client: 'Lorem Ipsum Dolor',
        date: '03/02/2024',
        name: 'Lorem Ipsum',
      },
      {
        image: require('@/assets/sample.png'),
        client: 'Lorem Ipsum Dolor',
        date: '03/02/2024',
        name: 'Lorem Ipsum',
      },
      {
        image: require('@/assets/sample.png'),
        client: 'Lorem Ipsum Dolor',
        date: '03/02/2024',
        name: 'Lorem Ipsum',
      },
      {
        image: require('@/assets/sample.png'),
        client: 'Lorem Ipsum Dolor',
        date: '03/02/2024',
        name: 'Lorem Ipsum',
      },
      {
        image: require('@/assets/sample.png'),
        client: 'Lorem Ipsum Dolor',
        date: '03/02/2024',
        name: 'Lorem Ipsum',
      },
      {
        image: require('@/assets/sample.png'),
        client: 'Lorem Ipsum Dolor',
        date: '03/02/2024',
        name: 'Lorem Ipsum',
      },
    ],
    promotions: {
      name: 'San Valentín',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien.',
      date: '17/02/2024',
      image: require('@/assets/sample.png'),
    },
    testimonials: [
      {
        name: "Nombre 1",
        date: '03/02/2024',
        rate: 5,
        opinion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien."
      },
      {
        name: "Nombre 2",
        date: '03/02/2024',
        rate: 5,
        opinion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien."
      },
      {
        name: "Nombre 3",
        date: '03/02/2024',
        rate: 5,
        opinion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae elit pharetra, feugiat elit mollis, elementum sapien."
      },
    ],
    footer: {
      socials: [
        {
          name: 'Lorem',
          icon: require('@/assets/sample.png'),
          link: '#',
        },
        {
          name: 'Ipsum',
          icon: require('@/assets/sample.png'),
          link: '#',
        },
        {
          name: 'Dolor',
          icon: require('@/assets/sample.png'),
          link: '#',
        },
      ],
      name: "Lorem"
    },
  })
}
</script>

<style scoped>
#home {
  height: calc(100vh - 100px);
  margin-top: 100px;
  width: 100h;
  background: transparent;
  position: relative;
  scroll-behavior: smooth;
  overflow-y: scroll;
  scroll-padding-top: 100px;
  scroll-margin-top: 100px;
}
::-webkit-scrollbar {
  width: 10px;
}
::-webkit-scrollbar-thumb {
  background: var(--primary);
  border-radius: 10px;
  border: 1px solid var(--background);
}
</style>
