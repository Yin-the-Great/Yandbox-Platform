<template>
  <div class="header">
    <el-row>
      <el-col :span="1" :offset="1">
        <el-image
          :src="logo"
          :fit="fit">
        </el-image>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: 'Header',
      logo: 'https://i.loli.net/2021/01/29/SUy1e7YGxA5VjiZ.png',
    };
  },
};
</script>

<style scoped>
.el-image {
  width: 50px;
  height: 50px;
  padding-top: 10px
}
</style>
