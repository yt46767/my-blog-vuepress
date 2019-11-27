# 基础
## shell传参
"$0"，直接拿第一个参数
https://zhidao.baidu.com/question/714636440747136725.html
https://www.runoob.com/linux/linux-shell-passing-arguments.html

# node环境
## node中执行shell命令  
```
//使用插件child_process

var process = require('child_process');

//清空指定文件夹下文件
process.exec('rm -fr '+copyUrl+'*',function(err){
  console.log(err) //当成功是error是null 
})

//复制指定文件夹下文件到另一个文件下
process.exec('cp  -r  复制指定文件夹路径（绝对文件夹路径）      粘贴指定文件夹路径（绝对地址）’,function(err){
     console.log(err) //当成功是error是null
})
```
https://www.jianshu.com/p/a48ac64aa3a7  

# window环境
## 给这个目录赋予所有人可读可写可执行权限  
```  
chmod  -R 777 /var/www  
```  
这行命令就是给“/var/www”这个目录赋予所有人可读可写可执行权限，4+2+1=7。  

对应的：  
5=4 + 1,表示拥有可读可执行权限，但是没有写权限  
0 代表没有任何权限  

-rw——- (600) 只有所有者才有读和写的权限  
-rw-r–r– (644) 只有所有者才有读和写的权限，组群和其他人只有读的权限  
-rwx—— (700) 只有所有者才有读，写，执行的权限  
-rwxr-xr-x (755) 只有所有者才有读，写，执行的权限，组群和其他人只有读和执行的权限  
-rwx–x–x (711) 只有所有者才有读，写，执行的权限，组群和其他人只有执行的权限  
-rw-rw-rw- (666) 每个人都有读写的权限  

## 把当前目录权限授予yangtao（用户）：
chown -R yangtao *
## 开放所有权限：
chmod -R 777 *
https://blog.csdn.net/u011808596/article/details/79242271