## 下载  
git：  
https://git-scm.com/  

## 安装
教程：
https://www.jianshu.com/p/fa483096bcb9

## 基础  
### git push --set-upstream  
git push --set-upstream origin master（省略形式为：git push -u origin master）将本地的master分支推送到origin主机（--set-upstream选项会指定一个默认主机），同时指定该主机为默认主机。  
好处：后面使用git push，不加任何参数。  
### git日志  
git log  
git log的落地方法：  
git log >log/update.log  
https://jingyan.baidu.com/article/4b52d702c3e68afc5d774b7e.html  
git log输出表格  
rm -rf log/update.csv && git log --date=iso --pretty=format:'"%h","%an","%ad","%s"' >> log/update.csv  
git log --date=iso --pretty=format:'"%h","%an","%ad","%s"' >> log/update.xlsx  
https://blog.csdn.net/ianly123/article/details/82348723  
git log格式化文档（--pretty=format:）  
https://blog.csdn.net/zheyiw/article/details/88996473  
注意：输出表格的文件格式只能csv  
### 创建分支  
git checkout -b feature/xxxx  
### 修改git全局提交作者名
git config --global user.name "andyyang(杨涛)"

## 案例  
### github打造API网站  
组件：  
docsify  
源码仓库：  
https://github.com/docsifyjs/docsify  
api中文文档：  
https://docsify.js.org/#/zh-cn/  

## 使用  
### 常见场景命令  
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

## 问题  
### SEC7120: [CORS] 原点“ms-appx-web://microsoft.microsoftedge”无法支持“ms-appx-web:///assets/Fonts/BrowserMDL.ttf#Browser MDL2 Assets”的 cross-origin font 资源  
https://www.cnblogs.com/20180609miss/p/10276198.html  
### git log输出文件，中文乱码  
+ 原因  
git log输出日志格式，默认为gbk  
+ 解决：  
git log输出日志格式，设置为utf-8  
```shell  
git config --global i18n.commitencoding utf-8  
git config --global i18n.logoutputencoding utf-8  
export LESSCHARSET=utf-8  
```  
https://blog.csdn.net/qq_27258799/article/details/78977764  
### git clone git地址，报错：kex_exchange_identification: read: Connection reset by peer fatal: Could not read from remote repository
报错内容：
```
PS D:\Project> git clone git@github.com:yt46767/answer-card.git
Cloning into 'answer-card'...
kex_exchange_identification: read: Connection reset by peer
fatal: Could not read from remote repository.

Please make sure you have the
```
远程服务器把我的IP禁掉了

## 工具
### sourcetree
#### 安装
+ sourcetree离线免登录安装
https://my.oschina.net/u/868789/blog/2208147
注：建议使用3.1.3版本,避免闪退！

### tortoisegit
#### 安装
tortoisegit安装教程
https://www.cnblogs.com/javahr/p/9767141.html