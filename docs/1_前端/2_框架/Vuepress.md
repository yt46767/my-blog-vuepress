# 使用场景  
博客  

# 组件  
## vuepress全文搜索：Algolia  
https://segmentfault.com/a/1190000017055963  
因为vuepress本身只支持h1、h2的搜索。  
Algolia的后台管理：  
https://www.algolia.com/apps/MOCMSTHTCB/dashboard  

# 问题  
## 本地访问正常。但部署到gh-pages后，点击导航栏跳转页面异常，打不开！  
原因：  
查了下是跳转后异步加载的js404报错。  
js访问地址出错，如：https://yt46767.github.io/my-blog-vuepressassets/js/93.d762b067.js，应该是/assets  
具体原因处在config.js的base值设置不对，结尾少了/。  
解决：
base值结尾加/