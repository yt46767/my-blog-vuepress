## 代码组织
有BEM、OOCSS、SMACSS、ACSSD等规范
### 分类规则
主要遵守SMACSS规范，它提出了一种CSS分类规则，分为五种类型： 
```
Base   
Layout   
Module   
State   
Theme  
```
+ Base
  是默认的样式，是对单个元素选择器（包括其属性选择器，伪类选择器，孩子/兄弟选择器）的基础样式设置，例如html, body, input[type=text], a:hover等。CSS Reset/Normalize就是一种Base Rule的应用。   
  注意：在基础样式中不应该使用!important
  ```
  html, body {
    margin: 0;
    padding: 0;
  }

  input[type=text] {
    border: 1px solid #999;
  }

  a {
    color: #039;
  }

  a:hover {
    color: #03C;
  }
  ```
+ layout
  是对页面布局元素（页面架构中主要和次要的组件）的样式设置，例如header, navigation, footer, sidebar, login-form等。
  ```
  .header, footer {
    margin: 0;
  }

  .header {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 9999;
  }

  .navs {
    display: inline-block;
    margin: 0 auto;
  }
  ```
+ Modules
  对公共组件样式的设置，例如dropdown, tabs, carousels, dialogs, 等。
  ```
  .dropdown, .dropdown > ul {
    display: inline-block;
    border: 1px solid #283AE2;
  }

  .dropdown li:hover {
    background-color: #999;
  }

  .tabs {
    border: 1px solid #e8e8e8;
  }

  .tabs > .tab--active {
    border-bottom: none;
    color: #29A288;
  }
  ```
+ State
  对组件、模块、元素等表现行为或状态的样式修饰，例如hide, show, is-error等。
  ```
  .hide {
    display: none;
  }

  .show {
    display: block;
  }

  .is-error {
    color: red;
  }
  ```
+ Theme
  对页面整体布局样式的设置，可以说是一种皮肤，它可以在特定场景下覆盖base, layout等的默认样式。
  ```
  .body--theme-sky {
    background: blue url(/static/img/body--theme-sky.png) repeat;
  }

  .footer--theme-sky {
    background-image: blue url('/static/img/header--theme-sky.png') no-repeat center;
  }
  ```

### 书写顺序
@import   
变量声明   
样式声明   
```
// ✓
@import "est/all.less";

@default-text-color: #333;

.page {
    width: 960px;
    margin: 0 auto;
}
```
### 嵌套层级
将嵌套深度限制在2级。对于超过3级的嵌套，给予重新评估。这可以避免出现过于详实的CSS选择器。
避免大量的嵌套规则。当可读性受到影响时，将之打断。推荐避免出现多于20行的嵌套规则出现。
```
// ✗
.form {
  &-btn {
    width:50px;
    &-i {
      color: red;
      &-p {
        display: inline-block;
      }
    }
  }
}

// ✗
.form .form-btn .form-btn-i .form-btn-i-p {
  display: inline-block;
}

// ✓
.form {
  &-btn { //推荐使用2层嵌套
    width:50px;
  }
}

// ✓
.form .form-btn {
  display: inline-block;
}
```
## class类
### 命名
class命名只能出现小写英文和破折号 -连接 ，不允许下划线_ 和 驼峰命名法 。建议：class 名称应当尽可能短，并且意义明确。基于最近的父 class 或基本（base） class 作为新 class 的前缀。原因如下：  
1.-符合英文语义化，- 标识连子符，_是强调符号；  
2._underline 选择器命名，在IE6中无效；  
3.驼峰和 都不利于SEO搜索引擎检索切词，驼峰无法切成单词， 谷歌会切漏关键词；  
4.输入的时候少按一个shift键，且Google、Yahoo、淘宝、豆瓣在他们的新CSS代码规范中推荐使用 -作为className分隔符。
```
// ✗
.submit_btn {
  width:50px;
}

// ✗
.submitBtn {
  width:50px;
}

// ✓
.submit-btn {
  width:50px;
}

// ✓✓
.form {
  &-btn {
    width:50px;
  }
}
```
## 变量
### 命名
采用 @foo-bar 形式，不使用 @fooBar 形式。
```
// ✗
@sidebarWidth: 200px;

// ✓
@sidebar-width: 200px;
```
## 选择器
### 属性选择器、id选择器、*
CSS的渲染方式是“从右往左”渲染的，就拿#header a{}举例，先渲染页面上所有的a签，再去寻找id为header的元素
建议：少用#，少用*，少用标签选择器，少用属性选择器
```
// ✗
#header {
  height: 1rem;  // 推荐用 .header 可以复用，且#选择器权重高，应按需使用，不能滥用
}

// ✗
#header *{
  padding:0 .3rem;  // 会去遍历所有标签，影响性能
}

// ✗
#header a {
  font-size:0.28rem; // 同样会去遍历所有<a>标签，影响性能
}

// ✗
a[href] {
    color:red;
}

// ✓
.header {
  .nav {
    width: 10px;
  }
}
```
### 换行
当多个选择器共享一个声明块时，每个选择器声明独占一行。
```
// ✗
h1, h2, h3 {
  font-weight: 700;
}

// ✓
h1,
h2,
h3 {
  font-weight: 700;
}
```
### 嵌套与缩进
嵌套的声明块前增加一次缩进，有多个声明块共享命名空间时尽量嵌套书写，避免选择器的重复。
但是需注意的是，尽量仅在必须区分上下文时才引入嵌套关系（在嵌套书写前先考虑如果不能嵌套，会如何书写选择器）
```
// ✗
.main .title {
  font-weight: 700;
}

.main .content {
  line-height: 1.5;
}

.main {
  .warning {
    font-weight: 700;
  }

  .comment-form {
    #comment:invalid {
      color: red;
    }
  }
}

// ✓
.main {
  .title {
    font-weight: 700;
  }

  .content {
    line-height: 1.5;
  }

  .warning {
    font-weight: 700;
  }
}

#comment:invalid {
  color: red;
}
```
## 空格
### 属性、变量
选择器和 { 之间保留一个空格。  
属性名后的冒号（:）与属性值之间保留一个空格，冒号前不保留空格。   
定义变量时冒号（:）与变量值之间保留一个空格，冒号前不保留空格。    
在用逗号（,）分隔的列表（Less 函数参数列表、以 , 分隔的属性值等）中，逗号后保留一个空格，逗号前不保留空格。  
```
// ✗
.box{
  @w:50px;
  @h :30px;
  width:@w;
  height :@h;
  color: rgba(255,255,255,.3);
  transition: width 1s,height 3s;
}

// ✓
.box {
  @w: 50px;
  @h: 30px;
  width: @w;
  height: @h;
  transition: width 1s, height 3s;
}
```
### 运算
+/-/*// 四个运算符两侧保留一个空格。+/-两侧的操作数有相同的单位，如果其中一个是变量，另一个数值书写单位。
```
// ✗
@a: 200px;
@b: (@a+100)*2;

// ✓
@a: 200px;
@b: (@a + 100px) * 2;
```
### 混入（Mixin）
Mixin 和后面的空格之间不包含空格。在给 mixin 传递参数时，在参数分隔符（, / ;）后保留一个空格：
```
// ✗
.box {
  .size(30px,20px);
  .clearfix ();
}

// ✓
.box {
  .size(30px, 20px);
  .clearfix();
}
```
## 属性
### 编写顺序
由于定位（positioning）可以从正常的文档流中移除元素，并且还能覆盖盒模型（box model）相关的样式，因此排在首位。盒模型决定了组件的尺寸和位置，因此排在第二位。其他属性只是影响组件的内部（inside）或者是不影响前两组属性，因此排在后面。建议顺序，如下：
定位
盒子模型
排版
视觉
```
.declaration-order {
  // 盒子模型
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 100;

  // 盒子模型
  display: block;
  box-sizing: border-box;
  width: 100px;
  height: 100px;
  padding: 10px;
  border: 1px solid #e5e5e5;
  border-radius: 3px;
  margin: 10px;
  float: right;
  overflow: hidden;

  // 排版
  font: normal 13px "Helvetica Neue", sans-serif;
  line-height: 1.5;
  text-align: center;

  // 视觉
  background-color: #f5f5f5;
  color: #fff;
  opacity: .8;

  // 其它
  cursor: pointer;
}
```

### 缩写
多个属性定义可以使用缩写时，尽量使用缩写。
```
// ✗
.nav {
  margin-left: 10px;
  margin-right: 10px;
}

// ✓
.nav {
  margin: 0 10px 0 10px;
}
```
### 前缀
不用写，将由项目自动构建完成。
```
// ✗
.box {
  -webkit-transform: rotate(30deg);
      -moz-transform: rotate(30deg);
      -ms-transform: rotate(30deg);
        -o-transform: rotate(30deg);
          transform: rotate(30deg);
}

// ✓
.box {
  transform: rotate(30deg);
}
```
## 数值
### 小数
对于处于 (0, 1) 范围内的数值，小数点前的 0 可以（MAY）省略，同一项目中保持一致。
```
// ✗
transition-duration: 0.5s, .7s;

// ✓
transition-duration: .5s, .7s;
```
### 0值
px等单位可以省略。
```
// ✗
margin-top: 0px;

// ✓
margin-top: 0;
```
### 颜色
颜色定义使用 #rrggbb 格式定义，并在可能时尽量缩写为 #rgb 形式，且避免直接使用颜色名称与 rgb() 表达式。
```
// ✗
border-color: red;
color: rgb(254, 254, 254);

// ✓
border-color: #f00;
color: #fefefe;
```
## 继承
使用继承时，如果在声明块内书写 :extend 语句，写在开头。
```
// ✗
.sub {
  color: red;
  &:extend(.mod all);
}

// ✓
.sub {
  &:extend(.mod all);
  color: red;
}
```
## 注释
单行注释尽量（SHOULD）使用 // 方式。
```
// ✓
// 隐藏所有
* {
  display: none;
}
```

