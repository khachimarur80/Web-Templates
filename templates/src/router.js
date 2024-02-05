import { createRouter, createWebHistory } from 'vue-router';

import Home from '@/views/Home.vue';

const routes = [
  { path: '/', component: Home, meta: { title: 'Peluquería' } },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
