## js声明变量没有赋值
初始值为undefined

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