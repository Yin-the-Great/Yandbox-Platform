<template>
  <el-container class="home">
    <el-header height="70px"><Header/></el-header>
    <el-container>
      <el-aside width="15%"><Aside/></el-aside>
      <el-main><router-view/></el-main>
    </el-container>
  </el-container>
</template>

<script>
import Header from '@/components/Header.vue';
import Aside from '@/components/Aside.vue';

export default {
  name: 'Home',
  components: {
    Header, Aside,
  },
};
</script>
