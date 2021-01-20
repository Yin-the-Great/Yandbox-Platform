<template>
  <div class="aside">
    <el-menu
      background-color="#82C275"
      text-color="#fff"
      active-text-color="#5D8B57">
      <el-menu-item index="1">
        <i class="el-icon-location"></i>
        <span slot="title">任务大厅</span>
      </el-menu-item>
      <el-menu-item index="2">
        <i class="el-icon-document"></i>
        <span slot="title">信息管理</span>
      </el-menu-item>
      <el-menu-item index="3">
        <i class="el-icon-setting"></i>
        <span slot="title">账号设置</span>
      </el-menu-item>
      <el-submenu index="4">
        <template slot="title">
          <i class="el-icon-location"></i>
          <span>备用</span>
        </template>
        <el-menu-item index="4-1">
          <span>选项一</span>
        </el-menu-item>
        <el-menu-item index="4-2">
          <span>选项二</span>
        </el-menu-item>
      </el-submenu>
    </el-menu>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: 'Aside',
    };
  },
};
</script>
