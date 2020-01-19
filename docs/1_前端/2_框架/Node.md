## 案例
### 爬虫  
https://github.com/ecitlm/Node-SpliderApi  
### sockio  
chat:  
https://github.com/plhwin/nodejs-socketio-chat  

## yarn
### yarn的安装  
tnpm i yarn -g  

### yarn的使用  
<span style="color:red;">（错误）</span>      
yarn i  
<span style="color:green;">（正确）</span>     
yarn install  

### 常用命令  
yarn / yarn install 等同于npm install 批量安装依赖  
yarn add xxx 等同于 npm install xxx —save 安装指定包到指定位置  
yarn remove xxx 等同于 npm uninstall xxx —save 卸载指定包  
yarn add xxx —dev 等同于 npm install xxx —save-dev  
yarn upgrade 等同于 npm update 升级全部包  
yarn global add xxx 等同于 npm install xxx -g 全局安装指定包  
参考  
https://blog.csdn.net/w345731923/article/details/82878525  

## npm
### 基础
查看依赖包的所有版本
npm view [第三方依赖包] versions
### 修改npm镜像为中国淘宝  
npm config set registry https://registry.npm.taobao.org  
npm config set disturl https://npm.taobao.org/dist 
修改回来：
npm config delete disturl
npm config set registry https://registry.npmjs.org
### 按package-lock.json安装的命令：
npm i -f
### npm查看config
npm config list


## 插件
### 日志插件：tracer
git: https://github.com/baryon/tracer
评价：非常好用，还可以输出文件。
### node版本管理：n/nvmw
+ mac电脑：
npm i -g n
+ window电脑：
npm i -g nvmw
    + 使用：
    nvmw install v11.15.0
    nvmw use v11.15.0
    或设置全局的变更：
    nvmw switch 10.3.0
### 观察文件目录修改行为：fsevents
### angular的chrome插件：AngularJS Batarang
+ 下载：
http://www.cnplugins.com/devtool/angularjs-batarang/download.html
+ 作用：
开发调试，可以看scope、component、hint
+ 安装：
https://blog.csdn.net/liuxin00020/article/details/87917699
https://blog.csdn.net/yanyanforest/article/details/73913219
#### 问题
##### chrome插件angular-batarang的angular.js打开一片空白
解决：
https://www.cnblogs.com/yugege/p/5146365.html
##### angular-batarang插件报错
解决:
在包中“wnpm install angular”，再重新加载到chrome扩展程序。
打开angular应用，打开开发者工具，右击“重新加载框架”,angularjs控制台显示出来

### 问题
#### npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.9: wanted {"os":"darwin","arch":"any"} (current: {"os":"win32","arch":"x64"})
解决：
npm install -f
#### primordials is not defined
解决：
node版本：v11.15.0
gulp版本：^3.9.1
#### OpenSSL SSL_connect: SSL_ERROR_SYSCALL in connection to github.com:443
解决：
出现此问题有可能是上传大小限制：
执行如下命令
git config http.postBuffer 524288000
524288000算法：
1024*1024*500
出现如下错误：curl 56 OpenSSL SSL_read:SSL_ERROR_sysCALL
执行：
git config http.sslVerify "false"
