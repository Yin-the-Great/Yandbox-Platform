import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'Home',
    component: () => import('../views/Home.vue'),
    children: [
      {
        path: '',
        name: 'Index',
        component: () => import('../views/Index.vue'),
      },
    ],
  },
  {
    path: '/enter',
    name: 'Enter',
    component: () => import('../views/Enter.vue'),
    children: [
      {
        path: '',
        name: 'Login',
        component: () => import('../views/Login.vue'),
      },
      {
        path: 'register',
        name: 'Register',
        component: () => import('../views/Register.vue'),
      },
    ],
  },
];

const router = new VueRouter({
  routes,
});

export default router;
