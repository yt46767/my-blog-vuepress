# 基础  
## 语法
### Object.create  
![Image Text](object-create.png)  
## const块声明的特别之处  
```javascript  
if(true){  
	const a = '1223';  
}  
console.log(a)  
```  
```text  
报错信息：  
VM677:4 Uncaught ReferenceError: a is not defined  
    at <anonymous>:4:13  
```  
## 兼容性自查  
英文：  
https://caniuse.com  
中文  
http://www.nengyongma.com/  
## 字符串转数字  
### 1、纯数字转换  
var s = "234";  
+ 1. 字符串在运算操作中会被当做数字类型来处理  
s * 1 // 234  
+ 2. 字符前加“+”  
+s  // 234  
+ 3. string的两个转换函数，只对string有效  
parseInt(s); // 234  
parseFloat(s); // 234  
+ 4. 强制类型转换  
Number(s); // 234  
### 2、数字加字母等非数字转换  
var s = '234string';  
parseInt(s);　// 234  
parseFloat(s);  // 234.0  

# 问题  
## eslint检测：vscode Expected indentation of 12 spaces but found 3 tabs.  
https://www.cnblogs.com/xuanmanstein/p/9181592.html  
## 什么是伪代码？  
<span style="display: inline-block;width:20px;"></span>不正式、不标准、接近自然语言的语言，把程序员的意思表达出来。  
## js声明变量没有赋值  
初始值为undefined  

# 插件  
## 移动端chartjs  
https://github.com/shixy/JChart  
## 文件上传（ajaxfileupload.js）及后台接口  
https://github.com/caiweile/fileupload_demo1  
## 移动端-证券行情组件  
https://github.com/yezhou05/html54stock  
## 轻量级组件库推荐-weui  
原生js：https://github.com/Tencent/weui.js  
小程序：https://github.com/Tencent/weui-wxss/  
react: https://github.com/weui/react-weui/  
## 京东组件库  
https://github.com/jdf2e/nutui  

# 模板
## 系统
### B2C商城系统 PC端+H5移动端 + 微信端 快速为你构建自己的商城系统  
https://github.com/Verytops/verydows  

# 案例
## H5直播  
斗鱼直播的github  

