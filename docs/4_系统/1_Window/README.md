## 基础
### window的edge浏览器自带滚动截图  
https://www.jianshu.com/p/c9311194c6bd  
### 我的window 10 版本  
Microsoft Windows [版本 10.0.17763.593]  
(c) 2018 Microsoft Corporation。保留所有权利。  
### microsoft store 个人资料设置  
https://account.microsoft.com/profile/preferred-language-selector  
### 查看运行的tcp端口及其进程号：  
netstat -ano  
### 查看进程号对应的程序  
netstat -aon|findstr pid  
### 杀掉该程序  
taskkill /f /t /im com.docker.backend.exe  
参考：  
https://www.cnblogs.com/micenote/p/6063242.html  
### 文件授权  
赋权给所有人完全控制  
CACLS /f/My/GitBook/my-gitbook/LIFE/VPN /T /C /G everyone:F  
cacls F:/My/GitBook/my-gitbook/LIFE/VPN /T /C /G everyone:F  
cacls F:/My/GitBook/my-gitbook /T /C /G everyone:F
https://jingyan.baidu.com/article/afd8f4de4298ab34e386e966.html  
### 数据文件夹（Roaming）
C:\Users\ASUS\AppData\Roaming\
### 程序安装文件夹
C:\Users\ASUS\AppData\Local\Programs\

## 应用程序
### 截图工具faststone capture
可通过360软件管理，安全安装。
注：网页搜索到的其他盗版版本，有木马病毒！
#### 截图快捷键：
ctrl+prtsc
### Nginx
#### windows下运行的Nginx,用bat实现nginx的start/stop
### Chrome
#### 教程
##### 离线插件安装 
+ step 0
chrome离线插件包下载  
http://www.cnplugins.com/down/downcheck.aspx?fn=1502/www.cnplugins.com_iaddkimmopgchbbnmfmdcophmlnghkim_2_5_38_.crx&aid=26167   
+ Step1  
把下载好的 xxx.crx 扩展程序的文件扩展名更改为 zip  
+ Step2  
解压zip文件  
+ Step3  
chrome访问：chrome://extensions/  
+ Step4  
打开"开发者模式"开关  
+ Step5  
点击"加载已解压的扩展程序"  
+ Step6  
选择刚解压的文件夹   
https://blog.csdn.net/u014061630/article/details/89715656  
也是“crx header invalid”问题的解决方案。
#### 插件  
##### markdown预览  
http://www.121down.com/soft/softview-92081.html#downaddress  
### powershell
#### 基础
##### 基础命令  
https://www.pstips.net/powershell-environment-variables.html  
##### 下载http文件  
https://blog.51cto.com/ityunwei2017/1868557  
##### Powershell拥有自己的脚本  
扩展名为“.ps1”,而不是“.psl”  
参考：  
https://blog.csdn.net/weixin_34200628/article/details/86411099  
##### 执行ps1脚本的前提：  
+ 管理员运行powershell  
+ 运行命令：  
Set-ExecutionPolicy remotesigned  
+ 属于: Y  
##### wget for windows
+ 教程：
https://blog.csdn.net/qq_40962368/article/details/86772419
+ 下载：
https://eternallybored.org/misc/wget/

## 问题
### 记一次Git push 项目输入账号密码后无法再次弹出认证窗口且一直认证失败[fatal: Authentication failed for]的解决办法  
https://my.oschina.net/Jackcrj/blog/2991933  
### Microsoft store无法安装应用  
https://answers.microsoft.com/zh-hans/windows/forum/windows_10-windows_store/microsoft/20f27c16-251b-4614-bf03-fd069efecb32  
解决方法二：  
试试网页版microsoft store  
https://www.microsoft.com/zh-cn/store/apps/  
### 需要新应用打开此ms-windows-store  
https://jingyan.baidu.com/article/e5c39bf5c6e0ca39d7603396.html  
### window电脑给iphone充电
+ 驱动程序下载：
https://www.driverscape.com/download/apple-mobile-device-usb-driver
+ 是否启动成功
查看【服务】，看看是否 在 Windows 上启动了
Apple Mobile Device 服务 (AMDS)。接着怎么，再说。