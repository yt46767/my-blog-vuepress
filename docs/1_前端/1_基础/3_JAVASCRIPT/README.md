## 语法  
### Object.create  
![Image Text](object-create.png)  

## 什么是伪代码？  
<span style="display: inline-block;width:20px;"></span>不正式、不标准、接近自然语言的语言，把程序员的意思表达出来。  

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