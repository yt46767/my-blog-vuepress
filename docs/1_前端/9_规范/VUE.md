参照[VUE官网的风格指南](https://cn.vuejs.org/v2/style-guide/)以及常用的规范  

## 书写顺序  
### 组件/实例的选项顺序  
1. 副作用 (触发组件外的影响)   
`el`   

2. 全局感知 (要求组件以外的知识)   
`name`   
`parent`  

3. 组件类型 (更改组件的类型)   
`functional`   

4. 模板修改器 (改变模板的编译方式)   
`delimiters`   
`comments`   

5. 模板依赖 (模板内使用的资源)   
`components`   
`directives`   
`filters`   

6. 组合 (向选项里合并属性)   
`extends`   
`mixins`   

7. 接口 (组件的接口)   
`inheritAttrs`   
`model`    
`props/propsData`   

8. 本地状态 (本地的响应式属性)    
`data`   
`computed`   

9. 事件 (通过响应式事件触发的回调)   
`watch`   

10. 生命周期钩子 (按照它们被调用的顺序)   
`beforeCreate`    
`created`     
`beforeMount`   
`mounted`   
`beforeUpdate`   
`updated`   
`activated`   
`deactivated`   
`beforeDestroy`   
`destroyed`   

11. 非响应式的属性 (不依赖响应系统的实例属性)   
`methods`   

12. 渲染 (组件输出的声明式描述)   
`template/render`   
`renderError`   

### 元素特性顺序  
1. 定义 (提供组件的选项)   
`is`   

2. 列表渲染 (创建多个变化的相同元素)   
`v-for`  

3. 条件渲染 (元素是否渲染/显示)  
`v-if`  
`v-else-if`  
`v-else`  
`v-show`  
`v-cloak`  

4. 渲染方式 (改变元素的渲染方式)  
`v-pre`  
`v-once`  

5. 全局感知 (需要超越组件的知识)  
`id`  

6. 唯一的特性 (需要唯一值的特性)  
`ref`  
`key`  

7. 双向绑定 (把绑定和事件结合起来)  
`v-model`  

8. 其它特性 (所有普通的绑定或未绑定的特性)  

9. 事件 (组件事件监听器)  
`v-on`  

10. 内容 (覆写元素的内容)  
`v-html`  
`v-text`  

### 单文件组件的顶级元素顺序  
单文件组件应该总是让 `<script>`、`<template>` 和 `<style>` 标签的顺序保持一致。且 `<style>` 要放在最后，因为另外两个标签至少要有一个。  
```  
// ✗  
<style>/* ... */</style>  
<script>/* ... */</script>  
<template>...</template>  

// ✗  
//-- ComponentA.vue --//  
<script>/* ... */</script>  
<template>...</template>  
<style>/* ... */</style>  
//-- ComponentB.vue --//  
<template>...</template>  
<script>/* ... */</script>  
<style>/* ... */</style>  

// ✓  
//-- ComponentA.vue --//  
<script>/* ... */</script>  
<template>...</template>  
<style>/* ... */</style>  
//-- ComponentB.vue --//  
<script>/* ... */</script>  
<template>...</template>  
<style>/* ... */</style>  

// ✓  
//-- ComponentA.vue --//  
<template>...</template>  
<script>/* ... */</script>  
<style>/* ... */</style>  
//-- ComponentB.vue --//  
<template>...</template>  
<script>/* ... */</script>  
<style>/* ... */</style>  
```  
### 组件名中的多单词顺序  
**组件名应该以高级别的 (通常是一般化描述的) 单词开头，以描述性的修饰词结尾。**  
```  
// ✗  
components/  
|- ClearSearchButton.vue  
|- ExcludeFromSearchInput.vue  
|- LaunchOnStartupCheckbox.vue  
|- RunSearchButton.vue  
|- SearchInput.vue  
|- TermsCheckbox.vue  

// ✓  
components/  
|- SearchButtonClear.vue  
|- SearchButtonRun.vue  
|- SearchInputQuery.vue  
|- SearchInputExcludeGlob.vue  
|- SettingsCheckboxTerms.vue  
|- SettingsCheckboxLaunchOnStartup.vue  
```  

## 命名  
### 组件名  
+ 组件名为多个单词  
组件名应该始终是多个单词的，根组件 App 以及 `<transition>`、`<component>` 之类的 Vue 内置组件除外。这样做可以避免跟现有的以及未来的 HTML 元素相冲突，因为所有的 HTML 元素名称都是单个单词的。  
```  
// ✗  
Vue.component('todo', {  
  // ...  
})  

// ✗  
export default {  
  name: 'Todo',  
  // ...  
}  

// ✓  
Vue.component('todo-item', {  
  // ...  
})  

// ✓  
export default {  
  name: 'TodoItem',  
  // ...  
}  
```  
+ 基础组件名  
应用特定样式和约定的基础组件 (也就是展示类的、无逻辑的或无状态的组件) 应该全部以一个特定的前缀开头，比如 Base、App 或 V。  
```  
// ✗  
components/  
|- MyButton.vue  
|- VueTable.vue  
|- Icon.vue  

// ✓  
components/  
|- BaseButton.vue  
|- BaseTable.vue  
|- BaseIcon.vue  

// ✓  
components/  
|- AppButton.vue  
|- AppTable.vue  
|- AppIcon.vue  

// ✓  
components/  
|- VButton.vue  
|- VTable.vue  
|- VIcon.vue  
```  

+ 单例组件名  
**只应该拥有单个活跃实例的组件应该以 The 前缀命名，以示其唯一性。**  
这不意味着组件只可用于一个单页面，而是每个页面只使用一次。这些组件永远不接受任何 prop，因为它们是为你的应用定制的，而不是它们在你的应用中的上下文。如果你发现有必要添加 prop，那就表明这实际上是一个可复用的组件，只是目前在每个页面里只使用一次。  
```  
// ✗  
components/  
|- Heading.vue  
|- MySidebar.vue  

// ✓  
components/  
|- TheHeading.vue  
|- TheSidebar.vue  
```  

+ 紧密耦合的组件名  
**和父组件紧密耦合的子组件应该以父组件名作为前缀命名。**   
如果一个组件只在某个父组件的场景下有意义，这层关系应该体现在其名字上。因为编辑器通常会按字母顺序组织文件，所以这样做可以把相关联的文件排在一起。  
```  
// ✗  
components/  
|- TodoList.vue  
|- TodoItem.vue  
|- TodoButton.vue  

// ✓  
components/  
|- TodoList.vue  
|- TodoListItem.vue  
|- TodoListItemButton.vue  

// ✗  
components/  
|- SearchSidebar.vue  
|- NavigationForSearchSidebar.vue  

// ✓  
components/  
|- SearchSidebar.vue  
|- SearchSidebarNavigation.vue  
```  

+ 完整单词的组件名  
**组件名应该倾向于完整单词而不是缩写。**  
编辑器中的自动补全已经让书写长命名的代价非常之低了，而其带来的明确性却是非常宝贵的。不常用的缩写尤其应该避免。  
```  
// ✗  
components/  
|- SdSettings.vue  
|- UProfOpts.vue  

// ✓  
components/  
|- StudentDashboardSettings.vue  
|- UserProfileOptions.vue  
```  
+ 单文件组件文件的大小写  
**单文件组件的文件名应该要么始终是单词大写开头 (PascalCase)，要么始终是横线连接 (kebab-case)。**  
单词大写开头对于代码编辑器的自动补全最为友好，因为这使得我们在 JS(X) 和模板中引用组件的方式尽可能的一致。然而，混用文件命名方式有的时候会导致大小写不敏感的文件系统的问题，这也是横线连接命名同样完全可取的原因。
```
// ✗  
components/
|- mycomponent.vue

// ✗  
components/
|- myComponent.vue

// ✓  
components/
|- MyComponent.vue

// ✓

```
### 私有属性名  
**使用模块作用域保持不允许外部访问的函数的私有性。如果无法做到这一点，就始终为插件、混入等不考虑作为对外公共 API 的自定义私有属性使用 $_ 前缀。并附带一个命名空间以回避和其它作者的冲突 (比如 `$_yourPluginName_`)。**  
```  
// ✗  
var myGreatMixin = {  
  // ...  
  methods: {  
    update: function () {  
      // ...  
    }  
  }  
}  

// ✗  
var myGreatMixin = {  
  // ...  
  methods: {  
    _update: function () {  
      // ...  
    }  
  }  
}  

// ✗  
var myGreatMixin = {  
  // ...  
  methods: {  
    $update: function () {  
      // ...  
    }  
  }  
}  

// ✗  
var myGreatMixin = {  
  // ...  
  methods: {  
    $_update: function () {  
      // ...  
    }  
  }  
}  

// ✓  
var myGreatMixin = {  
  // ...  
  methods: {  
    $_myGreatMixin_update: function () {  
      // ...  
    }  
  }  
}  

// ✓  
// 甚至更好！  
var myGreatMixin = {  
  // ...  
  methods: {  
    publicMethod() {  
      // ...  
      myPrivateFunction()  
    }  
  }  
}  

function myPrivateFunction() {  
  // ...  
}  

export default myGreatMixin  
```  

## 使用ES6以上语法   
  + 定义变量使用let ,定义常量使用const。  
  + 使用export ，import 模块化。  

## props  
### 定义  
+ prop 的定义应尽量详细，至少需要指定其类型  
+ 虽然 Vue.js 支持传递复杂的 JavaScript 对象通过 props 属性，但应尽量使用 JavaScript 原始类型(字符串、数字、布尔值) 和 函数，避免复杂的对象。还可将复杂对象分解成多个props属性来传递。  
```  
// ✗  
// 使用复杂对象  
<range-slider :config="complexConfigObject"></range-slider>  

// ✓  
<range-slider  
  :values="[10, 20]"  
  min="0"  
  max="100"  
  step="5"  
  :on-slide="updateInputs"  
  :on-end="updateResults">  
</range-slider>  
```  

## 组件/实例的选项中的空行  
当你的组件开始觉得密集或难以阅读时，在多个属性之间添加空行可以让其变得容易。  
```  
// ✓  
props: {  
  value: {  
    type: String,  
    required: true  
  },  

  focused: {  
    type: Boolean,  
    default: false  
  },  

  label: String,  
  icon: String  
},  

computed: {  
  formattedValue: function () {  
    // ...  
  },  

  inputClasses: function () {  
    // ...  
  }  
}  
```   

## 注释  
### data属性  
```  
// ✗  
//选项卡切换标识  
funType: '1',  

// ✓  
funType: '1', //选项卡切换标识  
```  
### method方法  
```  
// ✓  
/**  
 * 选项产生变化  
 * @param value  
 */  
userSelectChange(value) {  
  var a = value;  
},  
```  

## 注意  
+ 谨慎使用 this.$refs  
+ 无需将this赋值给component变量  
+ 调试信息 console.log()、debugger使用完，及时删除  