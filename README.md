# Happylay-交流学习使用-熟悉开发工作流

HappyLay后台管理系统基础框架

## 运行-更换淘宝镜像源

npm install -g cnpm --registry=https://registry.npm.taobao.org

### 1.安装

cnpm install

### 2.运行

cnpm run dev

### 3.打包

cnpm run build

### 4.开发步骤
创建module-XXX模块


####  main.js 注册模块XXX 
```
import  XXX  from '@/module-XXX/' // XXX模块

Vue.use(XXX , store)
```
####  配置路由模块
```
export default [
  {
    root: true,
    path: '/saas-xxxx', /** 父路径-修改 **/
    component: Layout,
    redirect: 'noredirect',
    name: 'saas-test',
    meta: {
      title: 'xxx业务模块管理',
      icon: 'component'
    },
    children: [
      {
        path: 'index', /** 子路径请求地址-修改  **/
        component: _import('XXX/mytest/index'), /** 跳转的vue视图-修改 **/
        name: 'saas-XXX-index',
        meta: {title: 'XXX测试页面', icon: 'component', noCache: true}
      }
    ]
  }
]
```
####  配置api接口
```
index.vue 导入接口
import {list} from '@/api/mytest/test'
```