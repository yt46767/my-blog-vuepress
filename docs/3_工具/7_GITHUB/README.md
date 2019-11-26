# 案例
## github打造API网站  
组件：  
docsify  
源码仓库：
https://github.com/docsifyjs/docsify
api中文文档：
https://docsify.js.org/#/zh-cn/

# 使用
## 常见场景命令
Command line instructions
You can also upload existing files from your computer using the instructions below.

Git global setup
git config --global user.name "Administrator"
git config --global user.email "admin@example.com"

Create a new repository
git clone http://localhost:10080/root/my-diary.git
cd my-diary
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

Push an existing folder
cd existing_folder
git init
git remote add origin http://localhost:10080/root/my-diary.git
git add .
git commit -m "Initial commit"
git push -u origin master

Push an existing Git repository
cd existing_repo
git remote rename origin old-origin
git remote add origin http://localhost:10080/root/my-diary.git
git push -u origin --all
git push -u origin --tags

# 问题
## SEC7120: [CORS] 原点“ms-appx-web://microsoft.microsoftedge”无法支持“ms-appx-web:///assets/Fonts/BrowserMDL.ttf#Browser MDL2 Assets”的 cross-origin font 资源
https://www.cnblogs.com/20180609miss/p/10276198.html