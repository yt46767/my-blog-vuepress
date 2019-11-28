## 类型  
[UBUNTU](#ubuntu)  
[CENTOS](#centos)   

## UBUNTU  
### 基础
#### 下载命令  
apt-get ....  
##### 启动ssh  
生成ssh key  
root@f031e62c7661:/var/run/sshd### ssh-keygen -t rsa  
Generating public/private rsa key pair.  
Enter file in which to save the key (/root/.ssh/id_rsa):  
Created directory '/root/.ssh'.  
Enter passphrase (empty for no passphrase):  
Enter same passphrase again:  
Your identification has been saved in /root/.ssh/id_rsa.  
Your public key has been saved in /root/.ssh/id_rsa.pub.  
The key fingerprint is:  
SHA256:YsGovhoCRsWf+JECJKkt8TrEYKi7HyRXIIukj6r2zoA root@f031e62c7661  
The key's randomart image is:  
+---[RSA 2048]----+  
|=+o.             |  
|X=.o o           |  
|X=. = =          |  
|==o= = .         |  
|=== o + S        |  
|O=   o .         |  
|E+o              |  
|+ooo             |  
|+o=+             |  
+----[SHA256]-----+  
注意：  
[fsmythe@example.com ~]$ /usr/bin/ssh-keygen -t dsa  
Generating public/private dsa key pair.  
Enter file in which to save the key (/home/fsmythe/.ssh/id_dsa):  
Enter passphrase (empty for no passphrase): ****** (Enter 'mypassword')  
Enter same passphrase again: ****** (Enter 'mypassword')  
Your identification has been saved in /home/fsmythe/.ssh/id_dsa.  
Your public key has been saved in /home/fsmythe/.ssh/id_dsa.pub.  
The key fingerprint is:  
33:af:35:cd:58:9c:11:91:0f:4a:0c:3a:d8:1f:0e:e6 fsmythe@example.com  
#### 修改sshd-config允许root登陆  
sed -i 's+PermitRootLogin prohibit-password+PermitRootLogin yes' /etc/ssh/sshd-config  
https://www.vediotalk.com/archives/606  
#### ubuntu无脑操作直接开放root快速操作  
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config  
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config  
service ssh restart  
#### 进入ubuntu命令  
docker exec -it  f031e62c7661 /bin/bash  
#### 启动sshd命令  
/usr/sbin/sshd -D &  
或  
service ssh start  
#### linux ssh连接本机  
查看sshd启动状态：  
service ssh status  
否时，sshd启动命令  
service ssh start  
ssh连接  
ssh root@127.0.0.1 -p 22  
#### 宿主机连接linux  
ssh root@172.17.179.49 -p 10022  
ssh root@172.17.0.2 -p 10022  
ssh root@127.0.0.1 -p 10022  
#### ubuntu安装ssh  
https://www.cnblogs.com/jie-fang/p/7928406.html  
重要  
https://www.cnblogs.com/gavin-guo/p/11461577.html  
https://blog.csdn.net/weixin_33691598/article/details/92134075  
#### ubuntu安装防火墙  
https://www.cnblogs.com/xwgcxk/p/10820518.html  
### 问题  
#### docker的ubuntu镜像无ifconfig和ping netstat命令  
apt-get update  
apt-get install net-tools  
apt-get install iputils-ping  
参考：  
https://www.cnblogs.com/jifeng/p/9397304.html  
#### docker apt-get update一直报错  
https://blog.csdn.net/qq_29422251/article/details/78488647  
#### ssh免密登录-permission deny(publickey,password)  
1. id_rsa.pub复制到authorized_keys(新文件)  
2. chmod -R 600 /root/.ssh  
#### 解决Ubuntu的SSH自动断线问题  
https://www.jianshu.com/p/f8d9f28b830e  
https://www.cnblogs.com/daxin/p/5603837.html  
https://blog.csdn.net/qq_21405949/article/details/52539686  
#### Ubuntu下"sshd:unrecognized service"  
https://blog.csdn.net/u013015629/article/details/70045809  
#### iptables v1.6.1: can't initialize iptables table `filter': Permission denied (you must be root)  
docker run -ti --privileged ubuntu:latest  
docker run -ti --privileged zen_wozniak  
参考：  
https://blog.csdn.net/Magic_Ninja/article/details/88432140  
#### ssh_exchange_identification:read connection reset by peer  
https://www.cnblogs.com/taoquns/p/9590960.html  

## CENTOS  
### 基础  
#### 实时监控日志  
tail -f laravel.log  
该条命令会输入laravel.log的变化，实现时时监控的目的  

### 问题  
#### -bash: lsof: command not found  
解决：  
yum install lsof  
参考：  
https://blog.csdn.net/cryhelyxx/article/details/43228423  
#### -bash: netstat: command not found  
yum install net-tools  
参考：  
https://blog.csdn.net/slovyz/article/details/50386240  