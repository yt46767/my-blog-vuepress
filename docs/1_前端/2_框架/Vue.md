## 安装  
https://www.jianshu.com/p/32beaca25c0d  

## 基础  
### vue最新版本  
2.x  

## 案例  
### 脚手架  
vue2+element-ui  
https://github.com/bailicangdu/vue2-elm  

## 问题  
### vue-cli确认是否安装成功，命令：vue -v报错：error: unknown option `-v'  
解决：  
vue -V  
### vue-cli构建脚手架，报错： vue-cli · Failed to download repo vuejs-templates/webpack: read ECONNRESET  
原因：  
公司网络屏蔽了github.com的代码下载  
解决：  
下载离线包。  

### 构建工具: vue-cli 
#### 介绍
+ CLI (@vue/cli) 是一个全局安装的 npm 包，提供了终端里的 vue 命令。它可以通过 vue create 快速创建一个新项目的脚手架，或者直接通过 vue serve 构建新想法的原型。你也可以通过 vue ui 通过一套图形化界面管理你的所有项目。
+ CLI 服务 (@vue/cli-service），npm局部安装与使用
+ CLI 插件是向你的 Vue 项目提供可选功能的 npm 包，例如 Babel/TypeScript 转译、ESLint 集成、单元测试和 end-to-end 测试等。Vue CLI 插件的名字以 @vue/cli-plugin- (内建插件) 或 vue-cli-plugin- (社区插件) 开头，非常容易使用。
当你在项目内部运行 vue-cli-service 命令时，它会自动解析并加载 package.json 中列出的所有 CLI 插件。
插件可以作为项目创建过程的一部分，或在后期加入到项目中。它们也可以被归成一组可复用的 preset。

#### 安装
```
npm install -g @vue/cli  
```
##### 手动配置脚手架  
+ typescript写法配置：  
Use class-style component syntax? (Y/n) y  
1  
是否使用Class风格装饰器？  
即原本是：home = new Vue()创建vue实例  
使用装饰器后：class home extends Vue{}  
具体参考：  
https://blog.csdn.net/weiwenwen6/article/details/83120115  

+ 单元测试选择：  
? Pick a unit testing solution: (Use arrow keys)  
> Mocha + Chai  //mocha灵活,只提供简单的测试结构，如果需要其他功能需要添加其他库/插件完成。必须在全局环境中安装  Jest          //安装配置简单，容易上手。内置Istanbul，可以查看到测试覆盖率，相较于Mocha:配置简洁、测试代码简洁、易于和babel集成、内置丰富的expect  
https://www.jianshu.com/p/450217c125cc  

+ 端对端测试工具选择  
[自动化测试与分层测试](../4_工具/测试.md) 

+ ? Where do you prefer placing config for Babel, PostCSS, ESLint, etc.? (Use arrow keys)
> In dedicated config files // 独立文件放置
  In package.json // 放package.json里
关于Babel, PostCSS, ESLint, etc.这些配置文件你是想放在package.json里面还是单独放在外面
编辑器一般默认会在项目根目录下寻找配置文件，这里我就直接回车选择In dedicated config files
https://www.jianshu.com/p/0d78ff9fe6ed

+ Save this as a preset for future projects?这个就是问要不要把当前的这一系列选项配置保存起来，方便下一次创建项目时复用。选择y。
https://blog.csdn.net/xuqipeter/article/details/80452271
是否保存当前配置，如果选Y会要求输入配置名字。
https://www.cnblogs.com/skylineStar/p/9599828.html
personal-vue-cli3-config