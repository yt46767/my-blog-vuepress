# ECMASCRIPT
## ES6特性
## ES7特性
### Proxy  
用法：    
https://www.jianshu.com/p/77eaaf34e732  
## ES8特性
## ES9特性

# 编码
## escape  
对字符串进行编码  
+ 区别  
字符串转义，两者结果不一样  
## Unicode编码与解码  
+ 编码：   
<span style="display: inline-block;width:20px;">&nbsp;</span>stringObject.charCodeAt(index)     
    + 注：    
    <span style="display: inline-block;width:20px;">&nbsp;</span>index，必需。表示字符串中某个位置的数字，即字符在字符串中的下标。    
+ 解码：   
参考：   
https://www.w3school.com.cn/js/jsref_charCodeAt.asp    

# 前端原理
## javascript预解释
  + 读取var a
  + 查看当前作用域（集合）是否有当前变量声明
    + 没有，则当前作用域（集合）声明此变量
    + 有，则忽略    