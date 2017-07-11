import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

import authService from "./services/auth-service.js";

import ExternalLayout from "./layouts/external.vue";
import PanelLayout from "./layouts/panel.vue";

import Login from "./components/auth/login.vue";
import Example from "./components/app/example.vue";

const router = new VueRouter({
  mode: 'hash',
  routes: [
    {
      path: '/',
      redirect: '/example',
      component: PanelLayout,
      meta: { requiresAuth: true },
      children: [
        { path: '/example', component: Example },
      ]
    },
    {
      path: '/auth',
      component: ExternalLayout,
      children: [
        { path: 'login', component: Login }
      ]
    }
  ]
})

router.beforeEach((to, from, next) => {
  if (to.matched.some(record => record.meta.requiresAuth)) {
    if (!authService.loggedIn()) {
      next({
        path: '/auth/login',
        query: { redirect: to.fullPath }
      })
    } else {
      next()
    }
  } else {
    next()
  }
})

export default router
