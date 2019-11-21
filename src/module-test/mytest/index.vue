<template>
  <div class="dashboard-container">
    <div class="app-container">
      <el-card shadow="never">
        测试页面
      </el-card>
     </div>
  </div>
</template>

<script>
import {list} from '@/api/mytest/test'
export default {

  methods: {// 当前页面需要用的js方法
    
   getList(){
     // 调用API发起的请求 res响应数据
     list().then(res => {

       console.log(res)
     });
   }
  },
  // 创建完毕状态
  created() {
      this.getList()

  },
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
.alert {
  margin: 10px 0px 0px 0px;
}
.pagination {
  margin-top: 10px;
  text-align: right;
}
</style>
