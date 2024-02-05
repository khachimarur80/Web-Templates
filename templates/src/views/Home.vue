<template>
  <div id="home" @scroll="handleScroll">
    <vBanner/>
    <vServices/>
    <vTeam/>
    <vGallery/>
    <vInfo/>
    <vPromotions/>
    <vTestimonials/>
    <vContact/>
    <vFooter/>
  </div>
</template>
<script>

import vBanner from '@/components/banner/vBanner'
import vServices from '@/components/services/vServices'
import vTeam from '@/components/team/vTeam'
import vGallery from '@/components/gallery/vGallery'
import vInfo from '@/components/info/vInfo'
import vPromotions from '@/components/promotions/vPromotions'
import vTestimonials from '@/components/testimonials/vTestimonials'
import vContact from '@/components/contact/vContact'
import vFooter from '@/components/footer/vFooter'

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
    animationFrameId: false,
  }),
}
</script>

<style scoped>
#home {
  height: calc(100vh);
  width: 100h;
  background: transparent;
  scroll-behavior: smooth;
  overflow-y: scroll;
  scroll-padding-top: 100px;
  scroll-margin-top: 100px;
  overflow-x: hidden;
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
