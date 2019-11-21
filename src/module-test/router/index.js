/**
 * 测试模块 
 */
import Layout from '@/module-dashboard/pages/layout'
const _import = require('@/router/import_' + process.env.NODE_ENV)

export default [
  {
    root: true,
    path: '/saas-test', /** 父路径 **/
    component: Layout,
    redirect: 'noredirect',
    name: 'saas-test',
    meta: {
      title: 'xxx业务模块管理',
      icon: 'component'
    },
    children: [
      { 
        path: 'index', /** 请求地址 **/ /** /saas-page/index **/
        component: _import('test/pages/index'), /** 跳转的vue视图 **/
        name: 'saas-test-index',
        meta: {title: '测试列表展示', icon: 'component', noCache: true}
      },
      {
        path: 'details/:id', 
        component: _import('test/pages/index-details'),
        name: 'saas-test-details',
        meta: {title: '测试详情页面', icon: 'component', noCache: true}
      }
    ]
  }
]
