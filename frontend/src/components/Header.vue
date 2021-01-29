<template>
  <div class="header">
    <el-row>
      <el-col :span="3" :offset="1" id="logo">
        <el-image
          :src="images.logo"
          :fit="fit">
        </el-image>
      </el-col>
      <el-col :span="1" :offset="18" id="avatar">
        <el-image
          :src="images.avatar"
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
      images: {
        logo: 'https://i.loli.net/2021/01/30/vKRe71VyuXmoEUz.png',
        avatar: 'https://i.loli.net/2021/01/30/t6UvTpDGax1l7ZW.png',
      },
    };
  },
};
</script>

<style scoped>
.header {
  height: 70px;
  background: #6ba760;
}
#logo > .el-image {
  margin-top: 10px;
  width: 181px;
  height: 50px;
}
#avatar > .el-image {
  margin-top: 8px;
  width: 50px;
  height: 50px;
  border-radius:50px;
  border: 2px solid #eee;
  background: #eee;
}

</style>
