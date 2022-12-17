import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import OrcamentosView from '../views/OrcamentosView.vue'
import OrcamentoDetalhe from '../views/OrcamentoDetalhe.vue'
import FornecedoresView from '../views/FornecedoresView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/orcamentos',
    name: 'Orcamentos',
    component: OrcamentosView,
  },
  {
    path: '/orcamento/:code',
    name: "OrcamentoDetalhe",
    component: OrcamentoDetalhe,
  },
  {
    path: '/fornecedores',
    name: 'Fornecedores',
    component: FornecedoresView,
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
