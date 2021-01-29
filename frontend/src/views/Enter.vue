<template>
  <el-container class="enter">
      <el-header><EnterHeader/></el-header>
      <el-main><router-view/></el-main>
      <el-footer><Footer/></el-footer>
  </el-container>
</template>

<style>
.enter{
  background-color: rgb(37, 37, 37);
  min-height: 100vh;
}
.enter .el-header{
  margin: 0;
  padding: 0;
  background-color: black;
}
.enter .el-main{
  margin: 0;
  padding: 0;
}
.enter .el-footer{
  margin: 0;
  padding: 0;
  background-color: black;
}
</style>

<script>
import EnterHeader from '@/components/EnterHeader.vue';
import Footer from '@/components/Footer.vue';

export default {
  name: 'Home',
  components: {
    EnterHeader,
    Footer,
  },
};
</script>
