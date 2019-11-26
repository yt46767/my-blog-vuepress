# 教程  
## 官方安装教程：
http://www.damagehead.com/docker-gitlab/
(只需要执行前两步，即可)
## sameersbn搭建docker-github的源码：  
https://github.com/sameersbn/docker-gitlab  
## window 10 的 docker 安装 gitlab教程：  
https://jingyan.baidu.com/article/6b97984dd946b31ca2b0bf97.html  
(不建议。因为数据持久化存储有问题，重启docker后，gitlab的所有数据都会丢失，包括用户信息)

# 基础  
## 进入gitlab控制台  
* 查看镜像名字/id  
docker ps -a  
找到gitlab镜像id/名字  
eb82f7339baf  
docker-gitlab-master_gitlab_1  
* 启动gitlab镜像  
docker start eb82f7339baf  
docker start docker-gitlab-master_gitlab_1  
* 先启动并进入docker上的gitlab  
docker exec -it a7328ec41e91 bash  
* 进入gitlab的bash-console  
cd bin && ./rails console production  
*  查看所有用户  
user=User.all  
## 重置root密码  
查看镜像(获取CONTAINER ID)  
docker ps  
* 先启动并进入docker上的gitlab  
docker exec -it a7328ec41e91 bash  
* 进入gitlab的bash-console  
cd bin && ./rails console production  
*  查看所有用户  
user=User.all  
参考：  
https://blog.csdn.net/AAA123524457/article/details/91351078  
## Shared Drives  
https://blog.csdn.net/qq_25800235/article/details/86536778  
参考：  
https://blog.csdn.net/qq_25800235/article/details/86536778  
## 访问git  
http://127.0.0.1:10080/users/sign_in  
## postgresql操作  
+ 切换安装用户  
su postgres  
+ 登录  
psql  
+ 列出所有数据库  
\l  
(注：list)  
+ 列出指定表的所有字段  
\c 数据库名  
\d  
+ 退出当前用户  
\q  

# 问题  
## gitlab502的解决访问  
原因：  
测试访问的时候老是提示502，原因在于我的服务器只有1G的内容，不满足gitlab运行的最低配置,gitlab最低的运行内存要求是2GB,配置的虚拟内存来解决问题  
解决：  
setting->swap设置为2G  
参考：  
https://www.phpsong.com/3408.html  