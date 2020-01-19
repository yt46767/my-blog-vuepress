## Vultr  
### 了解  
#### vultr-我的管理平台  
https://my.vultr.com/  

### 教程  
#### 搭建架子ssr并开启bbr  
https://wistbean.github.io/vultr-vps-bbr-ss.html  
#### 搭建ssr  
https://www.itwordsweb.com/linux_doc/ss.html  

### 基础  
#### Welcome to visit:https://teddysun.com/342.html  
Enjoy it!  
#### 默认客户端-代理端口：1080  
改为：1181  
#### 本地局域网ip:  
192.168.0.103  
#### ss服务基础操作  
启动：/etc/init.d/shadowsocks start  
停止：/etc/init.d/shadowsocks stop  
重启：/etc/init.d/shadowsocks restart  
状态：/etc/init.d/shadowsocks status  
配置文件路径：/etc/shadowsocks.json  
(可修改端口和密码)
卸载方法：/usr/local/src/shadowsocks.sh uninstall  
日志： /var/log/shadowsocks.log  
#### ping ip  
http://ping.chinaz.com  
#### ping port(国内)  
国内  
http://tool.chinaz.com/port/  
国外  
https://www.yougetsignal.com/tools/open-ports/  
#### 检测bbr是否启动  
lsmod | grep bbr  
#### 连接vultr教程（自写）：  
https://docs.qq.com/doc/DS3VZcUhEWUdmVmpm  
#### 快照备份与迁移  
https://www.laozuo.org/11188.html  
https://www.duoluodeyu.com/2481.html  
#### ISP运营商屏蔽的常见端口如下：  
目的端口：137-139，协议：TCP/UDP  
目的端口：593，协议：TCP/UDP  
目的端口：445，协议：TCP/UDP  
目的端口：4444，协议：TCP/UDP  
目的端口：135，协议：TCP/UDP  
目的端口：3332，协议：TCP  
目的端口：9996，协议：TCP/UDP  
目的端口：6669，协议：TCP  
目的端口：1434，协议：TCP/UDP  
目的端口：3127-3130，协议：TCP  
目的端口：42，协议：TCP  
目的端口：1068，协议：TCP/UDP  
目的端口：5554，协议：UDP  
目的端口：17185，协议：UDP  
参考：  
https://www.jianshu.com/p/4ed1c21ff326  

### 问题  
#### vultr国外服务器ip被封  
http://ping.chinaz.com/199.247.17.76  
https://www.chenweiliang.com/cwl-661.html  
#### 500 Internal Privoxy Error  
firewall-cmd --zone=public --add-port=8089/tcp --permanent && firewall-cmd --reload  
参考：  
https://www.cnblogs.com/love-wife/p/10903876.html  

