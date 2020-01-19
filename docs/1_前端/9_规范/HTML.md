## 标签
### 闭合
+ 自闭合（self-closing）标签，无需闭合 ( 例如： img input br hr 等 )；
+ 可选的闭合标签（closing tag），需闭合 ( 例如：li 或 body )；
+ 尽量减少标签数量；
  ```
  // ✓
  // 自闭合标签
  <img src="images/google.png" alt="Google">
  <input type="text" name="title">
  ```

  ```
  // ✓
  // 可选的闭合标签
  <ul>
    <li>Style</li>
    <li>Guide</li>
  </ul>
  ```

  ```
  // ✗ 
  // 尽量减少标签数量
  <span class="avatar">
    <img src="...">
  </span>

  // ✓
  // 尽量减少标签数量
  <img class="avatar" src="...">
  ```

### 嵌套
a 不允许嵌套 div这种约束属于<b>语义嵌套约束</b>，与之区别的约束还有严格嵌套约束，比如a 不允许嵌套 a。还有一些语义嵌套约束，如下：
```
<li> 用于 <ul> 或 <ol> 下；    
<dd>, <dt> 用于 <dl> 下；   
<thead>, <tbody>, <tfoot>, <tr>, <td> 用于 <table> 下； 
``` 
```
// ✗
<a>
  <div>年后</div>
</a>

// ✗
<a>
  <a>年后</a>
</a>
```
## 属性
### 书写顺序

id > class > name > data-xxx > src, for, type, href > title, alt > aria-xxx, role
```
// ✓
<a id="..." class="..." data-modal="toggle" href="###"></a>

// ✓
<input class="form-control" type="text">

// ✓
<img src="..." alt="...">
```
### 布尔值属性
HTML5 规范中 disabled、checked、selected 等属性不用设置值。
```
// ✓
<input type="text" disabled>

// ✓
<input type="checkbox" value="1" checked>

// ✓
<select>
  <option value="1" selected>1</option>
</select>
```
### Class 与 ID
+ class 应以功能或内容命名，不以表现形式命名；
+ class 与 id 单词字母小写，多个单词组成时，采用中划线-分隔；
+ 使用唯一的 id 作为 Javascript hook, 同时避免创建无样式信息的 class；
  ```
  // ✗
  // 避免创建无样式信息
  <div class="j-hook"></div>

  // ✗
  // 不以表现形式命名
  <div class="left"></div>

  // ✗
  // 多个单词组成时，采用中划线-分隔
  <div class="contentWrapper"></div>

  // ✓
  // 使用唯一的 id 作为 Javascript hook
  <div id="j-hook"></div>

  // ✓
  <div class="sidebar content-wrapper"></div>
  ```

