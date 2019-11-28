## webpack  
### devserver的配置属性  
https://www.cnblogs.com/tugenhua0707/p/9418526.html  
+ contentBase  
指定服务器资源的根目录  
如不配置，默认是当前执行的目录，即：项目的根目录  
```  
contentBase: path.join(__dirname, "dist")  
```  
+ port  
指定开启服务器的端口号  
如不配置，默认是8080  
```  
port: 8081  
```  
+ host  
配置DevServer的服务器监听地址  
```  
host: '0.0.0.0'  
```  
+ headers  
在HTTP响应中注入一些HTTP响应头  
```  
{  
    'X-foo': '112233'  
}  
```  
+ historyApiFallback  
应对返回404页面时定向跳转到特定页面  
```  
historyApiFallback: true  
```  
+ hot  
模块热替换功能  
默认行为是：在发现源代码被更新后，自动刷新整个页面，做到实时预览  
(通过在不刷新整个页面下，使用新模块替换旧模块，做到实时预览)  
```  
hot: true  
```  
+ inline  
false：使用iframe模式重载页面(即：iframe模式)  
原理：  
1. 在网页中嵌入了一个iframe，将我们自己的应用代码注入到 这个 iframe中去了。  
2. 页面头部会有一个 App ready. 这个提示，用于显示构建过程的状态信息。  
3. 加载了 live.bundle.js文件，还同时包含了 socket.io的client代码，进行了 websocket通讯，从而完成了自动编译打包，页面自动刷新功能。  
true：inline模式  
原理：  
每一个入口文件都会插入上面的socket的一段代码，  
没有iframe  
+ open  
DevServer启动且第一次构建完成，自动用默认浏览器打开网页  
+ overlay  
编译出错，在浏览器页面上显示错误  