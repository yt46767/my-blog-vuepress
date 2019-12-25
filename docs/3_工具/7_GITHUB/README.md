## github的fork  
拷贝源目标git仓库到自己Git仓库

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
### git add -A 和 git add . 的区别
https://blog.csdn.net/caseywei/article/details/90945295
### 更换git账户的密码  
+ 没用做法：  
让系统重新弹框给用户重新填写用户名和密码，进行提交  
```  
git config --system --unset credential.helper  
```  
window系统（有用）  
https://my.oschina.net/Jackcrj/blog/2991933  
注：修改sourcetree,是无用的。  
### 回滚到某个版本  
+ 前提条件：已远程提交   
操作：重置到当前分支   
结论：虽然可以回到之前的版本，但一更新就又回到未重置前的状态。<span style="color:red;">（无用功）</span>  
+ 前提条件：已远程提交     
操作：回滚提交    
结论：回滚的是要回滚当前版本提交的内容，不能达到目的   
参考：     
https://www.cnblogs.com/hopeway-shaon/p/5740280.html  
+ 命令回滚：   
git reflog   
git reset --hard commit_id  
git push origin HEAD --force   
前提条件：  
当远端设置了分支保护，则首先要将其取消，再强推；  
备注：  
HEAD就代表当前    
强推之后，之前的版本被覆盖了，无法再查看到。  
参考：   
https://jacheng.top/2017/02/16/Git-%E4%BB%A3%E7%A0%81%E5%9B%9E%E6%BB%9A/  
### 修改远程仓库地址  
+ 例：  
远程仓库迁移，本地提交地址需要更新   
操作：  
```  
git remote set-url origin [url]  
```  
参考：    
https://ddnode.com/2015/04/14/git-modify-remote-responsity-url.html  
### git命名规则  
Project 名称 全部小写 ，并且以横杠（-）作为连字符。  
命名规则：  
[产品名称]-[项目类型]-(自定义名称)-[日期]  
http://res.nie.netease.com/comm/doc/tutorial/git-naming.html 

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
### gitbook在window下，liveload失败的解决方案  
修改，gitbook serve就崩了的解决：  
gitbook serve执行后，删除_book   
https://cloud.tencent.com/developer/article/1426724   
复制粘贴，gitbook serve就崩了的解决：  
修改以下文件：  
C:\Users\tobeyang\.gitbook\versions\3.2.2\lib\output\website\copyPluginAssets.js  
文件中的 112 行   
将 confirm: true 改为 confirm: false   
参考：  
https://www.cnblogs.com/wenhui92/p/9482629.html 