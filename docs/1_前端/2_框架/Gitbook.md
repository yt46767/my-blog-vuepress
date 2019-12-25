### 官网(旧) - GitBook (Legacy)  
新的访问不了时，可使用：  
https://legacy.gitbook.com/  
但原因其实是新官网加载太慢，让网页空置一下就出来了。

## API Documents  
+ 官方API文档  
https://docs.gitbook.com/v2-changes/important-differences  
+ 具体：  
https://chrisniael.gitbooks.io/gitbook-documentation/content/  
+ 其他：  
https://chrisniael.gitbooks.io/gitbook-documentation/content/format/configuration.html  
http://www.chengweiyang.cn/gitbook/customize/book.json.html    

## 教程  
### Gitbook个人不错的使用教程  
https://skyao.gitbooks.io/learning-gitbook/content/creation/multiple_lang.html  
https://www.imooc.com/article/22889

## 安装
### 安装gitbook-cli客户端  
npm install gitbook-cli -g  

## 基础  
### 查看gitbook版本，并安装gitbook  
gitbook -V  
输出结果：  
```  
CLI version: 2.3.2  
GitBook version: 3.2.3  
```   

## 语法
### 块用法：/>  
<font size=2></font>  
标签需正常闭合。

### 多层目录：
#### javascript
+ ##### ECMAscript
    + ES6特性
    + ES7特性
    + ES8特性
    + ES9特性

### 段首开头：
写法：<span style="color:red;">（错误）</span>     
<span style="display: inline-block;width:20px;"/>大幅度发到付 
写法：<span style="color:green;">（正确）</span>     
<span style="display: inline-block;width:20px;">&nbsp;</span>大幅度发到付   

### 正确的字体样式：
<span style="color:green;">（正确）</span> 

### 错误的字体样式：
<span style="color:red;">（错误）</span> 

+ <b style="color:#52ea5f;">[优化点]</b>  

+ <b style="color:#52ea5f;">[安全点]</b> 

### 序号加粗
<b>1.</b>  

### 加圈的序号
<span style="border:1px solid black;border-radius: 50%;display:inline-block;width: 15px;height:15px;text-align: center;line-height: 15px;">1</span>

## 插件  
### Gitbook默认自带有5个插件：  
highlight： 代码高亮  
search： 导航栏查询功能（不支持中文）  
sharing：右上角分享功能  
font-settings：字体设置（最上方的"A"符号）  
livereload：为GitBook实时重新加载  
### gitbook插件  
logo: "insert-logo"  
高级搜索（支持中文）: "search-pro"  
代码复制按钮: "copy-code-button"  
导航目录折叠: "expandable-chapters"  
导航目录展开: "expandable-chapters"  
导航目录折叠: "chapter-fold"  
回到顶部: "back-to-top-button"  
在右上角添加github图标: "github"  
分享当前页面: "sharing-plus"  
页面添加页脚: "tbfed-pagefooter"  
打赏: "donate"  
自动生成目录树："atoc"  
根据文件夹自动生成SUMMARY.md文件: "summary"  
菜单可以折叠: "toggle-chapters"  
主题插件, 修改标题和表格颜色: "theme-comscore"  
侧边栏宽度可调节: "splitter"  
参考：  
http://gitbook.zhangjikai.com/plugins.html  

### atoc  
+ 用法：  
book.json  
```  
  "plugins": [  
    "atoc"  
  ],  
  "pluginsConfig": {  
    "atoc": {  
      "addClass": true,  
      "className": "atoc"  
    }  
  }  
```  
需要生成目录树的文件：  
```  
<!-- toc -->  
所有内容  
<!-- endtoc -->  
```  

### theme-comscore  
改变文章里标题的字体颜色  

### theme-default  
给文章里标题自动添加序号  
具体如：  
"theme-default": {  
  "showLevel": true  
},  

### chapter-fold  
使用方式：  
在book.json中写入以下内容  
{  
    "plugins": ["chapter-fold"]  
}  
https://segmentfault.com/a/1190000019473512?utm_source=tag-newest  

### 多个折叠目录插件  
chapter-fold  
expandable-chapters-small  
Toggle Chapters  
expandable-chapters  
https://www.jianshu.com/p/427b8bb066e6  
默认展开：  
expandable-chapters  
默认折叠：  
chapter-fold  
想要展开，最佳的组合是：  
https://segmentfault.com/a/1190000019806829?utm_source=tag-newest  

### popup弹出大图  
https://www.jianshu.com/p/427b8bb066e6  

### custom-favicon 修改标题栏图标  
https://www.jianshu.com/p/427b8bb066e6  

## 案例  
https://xiaohuochai.site/utils/helper/gitbook.html 
+ 写得好的作品  
https://docs.cocos.com/creator/manual/zh/getting-started/  
https://mta.qq.com/docs/?q=   
+ 阮一峰的EcmaScript6文档  
也是gitbook写成的。  
        + 网址  
        http://es6.ruanyifeng.com/#docs/set-map#Map  
        + github   
        https://github.com/ruanyf/es6tutorial  
+ 用例：  
https://docs.gitbook.com/account  
https://www.jianshu.com/p/421cc442f06c   

## gh-pages
### 结合 GitHub Pages 使用 GitBook  
https://www.jianshu.com/p/3d03ab330df5  
一键发布  
https://blog.csdn.net/simplehouse/article/details/78766513  
发布组件-gh-pages  
https://github.com/tschaub/gh-pages  

## 问题  
### Error: ENOENT: no such file or directory, open '_book/index.html'  
+ 描述：  
```  
warn: "options" property is deprecated, use config.get(key) instead  
warn: "options.generator" property is deprecated, use "output.name" instead  
use simple mode:  true  

Error: ENOENT: no such file or directory, open '_book/index.html'  
```  
+ 解决方法：   
gitbook update  
tnpm run book-install   

### Error loading version latest: Error: Cannot find module 'internal/util/types'  
原因：  
这个问题原因在于graceful-fs引入了node模块internal/util/types，此模块用处是给vm引入内置js文件，具体作用不可知也不想去考究了，重点在于此法已被废除，只有低版本nodejs和npm可用，但是强行降低node版本有点削足适履的意思，这种天怒人怨的低级bug，graceful-fs开发团队应该早就修复了才对，为什么还会出现报错，去gitbook的git仓库看了一下版本更迭，gitbook-cli默认的版本是2.6.9，最新的版本3.2.2，推测是旧版本没有使用最新版本的graceful-fs导致的问题，果然。。更新之后即可正常运行  
参考：  
https://www.zhihu.com/question/270284604/answer/766617038  
解决：  
gitbook fetch 3.2.2   

### gitbook Error: EPERM: operation not permitted, open  
原因：  
不是这台机器创建的文件，由git工具拉取下来的新文件。  
在windows中，创建的用户不一样，权限不一，导致部分文件没权限，最终热加载失败  
解决办法：  
赋予当前用户的读写权限  
使用git-bash  
```  
chown -R 用户名 赋权文件夹/文件  
```  

### Error: ENOENT: no such file or directory, stat 'E:\kaifa\My\Git\MyGitBook\_book\gitbook\gitbook-plugin-fontsettings\fontsettings.js'  
+ 方法一  
切换低版本的就行了，并且用Node V6  
在book.js中加入(使用3.0.0以下的版本）  
推荐是：2.6.7~2.6.4  
```  
gitbook fetch 2.6.7  
```  
+ 方法二    
在book目录下，如下代码新建book.json  
```  
{  
        "plugins": [  
                "fontsettings",  
                "sharing",  
                "lunr",  
                "search",  
                "highlight",  
                "livereload"  
        ]  
}  
```  
保存文件后，运行gitbook install安装插件依赖  
重新执行gitbook build或gitbook serve  
+ 方法二    
```  
gitbook serve .   
```  
参考：  
https://segmentfault.com/q/1010000009569245  

### windows 系统 GitBook生成PDF、epub报错Error during ebook generation: 'ebook-convert' 乱码  
解决：  
https://www.cnblogs.com/gobyte/p/10953081.html  

### gitbook导出的pdf不显示图片  
解决：  
把图片放到文件的当前文件夹里，用./引入  

### gitbook serve 在window热加载失败的解决办法：  
（1）修改文件：C:\Users\tobeyang\.gitbook\versions\3.2.2\lib\cli\serve.js  
(家里电脑的路径)C:\Users\ASUS\.gitbook\versions\3.2.3\lib\cli\serve.js
![Image Text](./gitbook-serve-livereload-1.png)  
![Image Text](./gitbook-serve-livereload-2.png)  
实现：第一次启动成功后，删除_book文件夹
解决：重新编译，权限不通过。 
增加代码：
```
var process = require('child_process');
var isFirst = true;
```
```
if(isFirst){
    process.exec('rm -rf _book', function(err){ //当成功时，error是null
        if(err === null){
            console.log('delete folder _book success!');
        }else{
            console.log('delete folder _book fail!Because: ' + err);
        }
        isFirst = null;
    });
}
```

增加异常捕获
![Image Text](./gitbook-serve-livereload-catch1.png)  
![Image Text](./gitbook-serve-livereload-catch2.png)  
解决：新增文件时，编译权限不通过
增加代码：
```
.catch(function(error1){
    console.log(error1);
});
```

```
.catch(function(error2){
    console.log(error2);
});
```

（2）修改文件：C:\Users\tobeyang\.gitbook\versions\3.2.2\lib\output\website\copyPluginAssets.js  
(家里电脑的路径)C:\Users\ASUS\.gitbook\versions\3.2.3\lib\output\website\copyPluginAssets.js
![Image Text](./gitbook-serve-livereload-3.png)  
将 confirm: true 改为 confirm: false  
解决：复制粘贴内容，实现热加载  
（3）md文件不能为空，否则编译失败。

### [Error: EPERM: operation not permitted, open 'f:\My\GitBook\my-gitbook\_book\LIFE\VPN\README.md'] {
  errno: -4048,
  code: 'EPERM',
  syscall: 'open',
  path: 'f:\\My\\GitBook\\my-gitbook\\_book\\LIFE\\VPN\\README.md'
}
解决办法：
md文件不能为空，既可解决！

### 去掉或者隐藏“Published with Gitbook”/“本书使用 GitBook 发布”
https://www.itsvse.com/thread-5819-1-1.html

## 类似框架  
### hexo  
#### 主题配置  
+ 好用的主题：  
[Indigo](https://github.com/yscoder/hexo-theme-indigo)  
[hexo-theme-BlueLake](https://github.com/chaooo/hexo-theme-BlueLake)  
+ 配置:  
theme: hexo-theme-BlueLake  
[theme-ad](https://github.com/dongyuanxin/theme-ad.git)  
+ demo:   
https://xin-tan.com/  
+ 配置:  
theme: theme-ad  
#### 本地重新编译&启动  
hexo g  
hexo s  
#### 发布步骤：  
hexo clean //清理服务器缓存  
hexo g -d //生成+部署  

#### 教程  
##### 博客-hexo搭建教程  
https://blog.csdn.net/grave2015/article/details/79961843  
##### gh-pages部署hexo  
https://www.jianshu.com/p/986b975a29ae 
##### Github Pages(三)：使用Hexo博客生成工具  
https://hans2936.github.io/2018/06/06/HexoLog/  