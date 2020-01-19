参考JSDOC规范

## 命名
有Camel（驼峰）、Pascal（帕斯卡）规范，两者区别：骆驼命名法是首字母小写,而帕斯卡命名法是首字母大写。
### 变量
以Camel命名。boolean类型的变量，使用is 或 has 开头。Promise对象，使用动宾短语的进行时表达
```
// ✓
var loadingModules = {};

// ✓
// boolean类型的变量
var isReady = false;
var hasMoreCommands = false;

// ✓
// Promise对象
var loadingData = ajax.get('url');
loadingData.then(callback);
```
### 私有属性、变量和方法
以下划线 _ 开头
```
// ✓
var _privateMethod = {};

// ✓
function _privateMethod(){
  var a = 1;
}
```
### 常量
使用全部字母大写，单词间下划线分隔的命名方式。
```
var HTML_ENTITY = {};
```
### 函数
函数名和参数名，使用 Camel 命名法。函数名，使用动宾短语
```
// ✓
// 函数名
function getData() {}

// ✓
function hear(theBells) {}
```
### 类
类名、类的方法、类的属性，使用 Camel 命名法。类名，使用名词
```
// ✓
// 类名
function TextNode(value, engine) {
    // 类的属性
    this.textValue = value;
    this.engine = engine;
}

// ✓
// 类的方法
TextNode.prototype.clonePerson = function () {
    return this;
};
```
### 枚举变量
枚举变量，使用 Pascal 命名法
枚举变量的属性，使用全部字母大写，单词间下划线分隔的命名方式
```
// ✓
// 枚举变量
var TargetState = {
    // 枚举变量的属性
    READING: 1,
    APPLY_ID: 3,
    READY_TIME: 4
};
```
## 布尔表达式
它是一段代码声明，它最终只有true（真）和false（假）两个取值。最简单的布尔表达式是等式（equality），这种布尔表达式用来测试一个值是否与另一个值相同。
```
if (1===1) { // 1===1,就是布尔表达式
  console.log(1)
}

1===1? console.log(1):console.log(2) // 1===1,就是布尔表达式
```
注意：
```
//以下布尔表达式，结果为false
null
undefined
''
0 //数字0

//以下布尔表达式，结果为true
'0' //字符串0
[]
{}
```
