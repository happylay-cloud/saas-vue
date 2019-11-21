import {createAPI, createFormAPI} from '@/utils/request'

// 列表展示页面
export const list = data => createAPI('/company', 'get', data)
// 详情页
export const detail = data => createAPI(`/company/${data.id}`, 'get', data)
