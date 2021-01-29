<template>
  <div class="login-container">
    <el-row type="flex">
      <el-col :span="8" :offset="14">
        <div class="login-dialog">
          <el-form class="login-form" ref="loginForm" :rules="rules"
                   :model="loginForm" hide-required-asterisk>
            <!-- 输入组件 -->
            <el-form-item label="用户/邮箱" prop="account"><br>
              <el-input v-model="loginForm.account"></el-input>
            </el-form-item>
            <el-form-item label="密码" prop="password"><br>
              <el-input type="password" v-model="loginForm.password"></el-input>
            </el-form-item>
            <!-- 响应组件 -->
            <el-form-item>
              <el-row>
                <el-button type="success" @click="submitLogin('form')">登录</el-button>
              </el-row>
              <el-row>
                没有账号？
                <el-button type="text" @click="goRegister" style="width: auto">
                  进行注册
                </el-button>
              </el-row>
            </el-form-item>
          </el-form>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<style>
.login-dialog{
  background-color: white;
  margin-top: 25%;
  padding: 20px 20px 0px 20px;
  border-radius: 8px;
  text-align: center;
}
.login-dialog .el-form-item__label{
  font-weight: bold;
}
.login-dialog .el-button{
  width: 100%;
}
</style>

<script>
export default {
  data() {
    return {
      loginForm: {
        account: '',
        password: '',
      },
      rules: {
        account: [
          { required: true, message: '用户/邮箱不能为空', trigger: 'blur' },
        ],
        password: [
          { required: true, message: '密码不能为空', trigger: 'blur' },
        ],
      },
    };
  },
  methods: {
    submitLogin(formId) {
      this.$refs[formId].validate((valid) => {
        console.log(valid);
      });
    },
    goRegister() {
      this.$router.push('/enter/register');
    },
  },
};
</script>
