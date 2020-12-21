# Vue-Cli 相关
Vue-Cli 是一个基于 Vue.js 进行快速开发的完整系统，方便开发，省去配置项目工作。  
更多详细信息点击 [Vue-Cli](https://cli.vuejs.org/zh/guide/)
## 1. 安装
首先安装 `Node.js` (v8.9或更高，推荐v10以上)，之后使用如下命令：
```
npm install -g @vue/cli
```
安装完成后可以使用 `vue` 指令检查是否安装成功：
```
vue --version
```
安装后若出现 `vue : 无法加载文件...` 错误，可以通过打开管理员命令窗口执行如下指令解决：
```
set-ExecutionPolicy RemoteSigned
```
## 2. 创建新项目
### 2.1 使用命令行
运行以下命令来创建一个新项目：
```
vue create <项目名>
```
之后会提示选择preset，有默认（适合快速开发项目原型）或手动设置（更丰富的特性）两种。手动设置包含：
* Babel (JS反编译)
* TypeScript (JS拓展)
* [PWA](https://juejin.cn/post/6844903556470816781) (渐进式Web应用)
* [Vuex](https://vuex.vuejs.org/zh/guide/) (组件间数据共享)
* Router
* CSS Pre-processors
* Linter/Formatter
* Unit testing
* E2E testing
> 在 `vue create` 过程中保存的 preset 会被放在你的 home 目录下的一个配置文件中 (`~/.vuerc`)。你可以通过直接编辑这个文件来调整、添加、删除保存好的 preset。
### 2.2 使用图形化界面
使用如下指令进入图形化管理界面：
```
vue ui
```