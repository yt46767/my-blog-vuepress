## 案例
### 爬虫  
https://github.com/ecitlm/Node-SpliderApi  

### sockio  
chat:  
https://github.com/plhwin/nodejs-socketio-chat  

## NPM
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

### 修改npm镜像为中国淘宝  
npm config set registry https://registry.npm.taobao.org  
npm config set disturl https://npm.taobao.org/dist  

## 插件
### 日志插件：tracer
git: https://github.com/baryon/tracer
评价：非常好用，还可以输出文件。