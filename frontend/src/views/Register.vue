<template>
  <div class="register-container">
    <el-row type="flex">
      <el-col :span="8" :offset="14">
        <div class="register-dialog">
          <el-form class="register-form" ref="registerForm" :rules="rules"
                   :model="registerForm" hide-required-asterisk>
            <!-- 输入组件 -->
            <el-form-item label="用户" prop="userId"><br>
              <el-input v-model="registerForm.userId"></el-input>
            </el-form-item>
            <el-form-item label="密码" prop="password"><br>
                <el-input type="password" v-model="registerForm.password"></el-input>
                <el-progress :percentage="passwordPercentage" :format="checkPwdLvl"></el-progress>
            </el-form-item>
            <el-form-item label="确认密码" prop="confirmedPassword"><br>
                <el-input type="password" v-model="registerForm.confirmedPassword"></el-input>
            </el-form-item>
            <el-form-item label="邮箱" prop="email"><br>
                <el-input v-model="registerForm.email"></el-input>
            </el-form-item>
            <el-form-item label="验证" prop="verificationCode"><br>
              <el-col :span="15">
                <el-input v-model="registerForm.verificationCode"></el-input>
              </el-col>
              <el-col :span="8" :offset="1">
                <el-button type="primary" @click="sendVerificationCode">发送邮箱验证码</el-button>
              </el-col>
            </el-form-item>
            <!-- 响应组件 -->
            <el-form-item>
              <el-row>
                <el-button type="success" @click="submitRegister('form')">注册</el-button>
              </el-row>
              <el-row>
                已有账号？
                <el-button type="text" @click="goLogin" style="width: auto">
                  直接登录
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
.register-dialog{
  background-color: white;
  margin-top: 10px;
  padding: 20px 20px 0px 20px;
  border-radius: 8px;
  text-align: center;
}
.register-dialog .el-form-item__label{
  font-weight: bold;
}
.register-dialog .el-button{
  width: 100%;
}
</style>

<script>
export default {
  data() {
    // 密码强度校验器
    const passwordValidator = (rule, value, callback) => {
      if (value === '') {
        this.passwordPercentage = 0;
        callback(new Error('密码不能为空'));
      } else {
        let pwdlvl = 0;
        // 异常字符检测
        if (this.registerForm.password.match(/([\u4E00-\u9FA5])+/)) {
          callback(new Error('密码不应包含中文'));
        }
        // 密码以字符起头
        if (!value.match(/^[a-zA-Z]/)) {
          callback(new Error('密码应以字母起头'));
        }
        // 密码应在给定长度中
        if (value.length < 6
            || value > 32) {
          pwdlvl = 0;
          callback(new Error('密码应为6-32位'));
        }
        // 密码数字检测
        if (value.match(/([0-9]+)/)) {
          pwdlvl += 1;
        } else {
          callback(new Error('密码至少应包含字母与数字'));
        }
        // 密码复杂度评估
        // 小写字母
        if (value.match(/([a-z]+)/)) {
          pwdlvl += 1;
        }
        // 大写字母
        if (value.match(/([A-Z]+)/)) {
          pwdlvl += 1;
        }
        // 特殊字符
        if (value.match(/([\W])+/)) {
          pwdlvl += 1;
        }
        switch (pwdlvl) {
          case 1: {
            this.passwordPercentage = 25;
            break;
          }
          case 2: {
            this.passwordPercentage = 50;
            break;
          }
          case 3: {
            this.passwordPercentage = 75;
            break;
          }
          case 4: {
            this.passwordPercentage = 100;
            break;
          }
          default: {
            this.passwordPercentage = 0;
            break;
          }
        }
        callback();
      }
    };
    // 判断验证密码是否与密码相同
    const cPasswordValidator = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('确认密码不能为空'));
      } else {
        if (value !== this.registerForm.password) {
          callback(new Error('两次密码不一致'));
        }
        callback();
      }
    };
    return {
      passwordPercentage: 0,
      registerForm: {
        userId: '',
        password: '',
        confirmedPassword: '',
        email: '',
        verificationCode: '',
      },
      rules: {
        userId: [
          { required: true, message: '用户不能为空', trigger: 'blur' },
        ],
        password: [
          { required: true, validator: passwordValidator, trigger: ['blur', 'change'] },
        ],
        confirmedPassword: [
          { required: true, validator: cPasswordValidator, trigger: ['blur', 'change'] },
        ],
        email: [
          { required: true, message: '邮箱不能为空', trigger: 'blur' },
        ],
        verificationCode: [
          { required: true, message: '邮箱验证码不能为空', trigger: 'blur' },
        ],
      },
    };
  },
  methods: {
    checkPwdLvl(percentage) {
      switch (percentage) {
        case 25: {
          return '弱';
        }
        case 50: {
          return '较弱';
        }
        case 75: {
          return '较强';
        }
        case 100: {
          return '强';
        }
        default: {
          break;
        }
      }
      return '';
    },
    submitRegister(formId) {
      this.$refs[formId].validate((valid) => {
        console.log(valid);
      });
    },
    goLogin() {
      this.$router.push('/enter');
    },
  },
};
</script>
