## 基础
### 优先级
  1. 基本公式：  
  ```
  内联 > ID选择器 > 类选择器 > 标签选择器
  ```

  2. 复杂样式的计算方法：   
  ``` 
  A 的值等于 1 的前提是存在内联样式, 否则 A = 0   
  B 的值等于 ID选择器 出现的次数   
  C 的值等于 类选择器 和 属性选择器 和 伪类 出现的总次数   
  D 的值等于 标签选择器 和 伪元素 出现的总次数
  ```  

  3. 计算出：
  ```
  {A,B,C,D}
  ```   

  4. 排序方法： 
  ```   
  A比较，谁大谁优先级高   
  A相等时，   
  B比较，谁大谁优先级高   
  B相等时，   
  C比较，谁大谁优先级高   
  C相等时，   
  D比较，谁大谁优先级高    
  D相等时，   
  谁位置靠后谁优先级高 
  ```

### 伪类、伪元素的区别
#### 单位
  + ##### px
    + 概念：   
      <span style="display: inline-block;width:20px;">&nbsp;</span>精准像素
  + ##### em   
    + 概念：   
      <span style="display: inline-block;width:20px;">&nbsp;</span>相对单位
    + 计算：   
      <span style="display: inline-block;width:20px;">&nbsp;</span>基准点为父节点的字体大小，如果自身节点定义字体大小，则优先基于自身
  + ##### rem
    + 概念：     
      <span style="display: inline-block;width:20px;">&nbsp;</span>相对单位
    + 计算    
      <span style="display: inline-block;width:20px;">&nbsp;</span>基准点为根节点html的字体大小
    + 兼容   
      <span style="display: inline-block;width:20px;">&nbsp;</span>css3新增属性，支持chrome/firefox/IE9 

### [伪元素](https://developer.mozilla.org/zh-CN/docs/Web/CSS/Pseudo-elements)  
  ```  
  (常见)  
  ::before (:before)  
  ::after (:after)      
  ::first-letter (:first-letter)    
  ::first-line (:first-line)      
  ::placeholder    
  ::selection   
  ::backdrop  
  (不常见)  
  ::grammar-error    
  ::marker  
  ::slotted()   
  ::spelling-error     
  ::cue (:cue)  
  ```  
### [伪类](https://developer.mozilla.org/zh-CN/docs/Web/CSS/Pseudo-classes)  
  ```  
  (切换元素状态)  
  :focus  
  :hover  
  :active  
  :visited  
  :link  
  (元素位置)  
  :first-child  
  :last-child  
  :nth-child()  
  (元素状态)  
  :checked  
  :disabled  
  :read-only  
  :required  
  :read-write  
  (不常见)  
  :nth-last-child()  
  :any  
  :default  
  :dir()  
  :empty  
  :enabled  
  :first  
  :first-of-type  
  :fullscreen  
  :indeterminate  
  :in-range  
  :invalid  
  :lang()  
  :last-of-type  
  :left  
  :not()  
  :nth-last-of-type()  
  :nth-of-type()  
  :only-child  
  :only-of-type  
  :optional  
  :out-of-range  
  :right  
  :root  
  :scope  
  :target  
  :valid  
  ```  

汇总参考：https://www.cxymsg.com/guide/ 