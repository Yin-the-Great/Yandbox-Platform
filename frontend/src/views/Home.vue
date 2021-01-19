<template>
  <el-container class="home">
    <el-header><Header/></el-header>
    <el-container>
      <el-aside><Aside/></el-aside>
      <el-main><router-view/></el-main>
    </el-container>
  </el-container>
</template>

<script>
// @ is an alias to /src
import Header from '@/components/Header.vue';
import Aside from '@/components/Aside.vue';

export default {
  name: 'Home',
  components: {
    Header, Aside,
  },
};
</script>
