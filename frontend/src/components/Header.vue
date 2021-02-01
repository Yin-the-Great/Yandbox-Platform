<template>
  <div class="header">
    <el-row>
      <el-col :span="3" :offset="1" id="logo">
        <el-image
          :src="images.logo"
          :fit="fit" class="logo-image">
        </el-image>
      </el-col>
      <el-col :span="2" :offset="18" id="avatar">
        <el-dropdown trigger="click">
          <span class="el-dropdown-link">
            <el-image
              :src="images.avatar"
              :fit="fit" class="avatar-image">
            </el-image>
            <i class="el-icon-arrow-down arrow-down"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>用户信息</el-dropdown-item>
            <el-dropdown-item>退出当前账号</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
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
.logo-image {
  margin-top: 10px;
  width: 181px;
  height: 50px;
}
.avatar-image {
  margin-top: 8px;
  width: 50px;
  height: 50px;
  border-radius:50px;
  border: 2px solid #eee;
  background: #eee;
}
.arrow-down {
  position: absolute;
  top: 28px;
  margin-left: 6px;
  color: #eee;
}
.el-dropdown-menu__item:hover {
  background: #F5F7FA;
  color: #606266;
}
</style>
