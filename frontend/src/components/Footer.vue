<template>
  <div class="footer-container">
    <el-row :gutter="10">
      <el-col :span="2" :offset="10">
        <el-button type="text">帮助</el-button>
      </el-col>
      <el-col :span="2">
        <el-button type="text">
          反馈
        </el-button>
      </el-col>
    </el-row>
  </div>
</template>

<style scoped>
.footer-container{
  width: 100%;
  height: 100%;
  margin-top: 20px;
  text-align: center;
  color: white;
}
</style>

<script>
export default {
  data() {
    return {
      name: 'Footer',
    };
  },
};
</script>
