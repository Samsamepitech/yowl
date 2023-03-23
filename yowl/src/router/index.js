import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import AccountView from '../views/AccountView.vue'
import UserOne from '@/components/CRUD-KPI/userOne.vue'
import MyProfile from '../views/MyProfile.vue'
import RegisterView from '../views/RegisterView.vue'
// import AdminKPI from '@/views/AdminKPI.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/register',
    name: 'register',
    component: RegisterView
  },
  {
    path: '/account',
    name: 'account',
    component: AccountView
  },
  {
    path: '/admin_kpi',
    name: 'AdminKPI',
    component: () => import(/* webpackChunkName: "admin_kpi" */ '@/views/AdminKPI.vue')
  },
  {
    path: '/one_user',
    name: 'userOne',
    component: UserOne
  },
  {
    path: '/profile',
    name: 'profile',
    component: MyProfile

  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
