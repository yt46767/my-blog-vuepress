## 设置  
### 链接打开浏览器  
// open default browser  
await vscode.env.openExternal(  
  vscode.Uri.parse('https://github.com/Microsoft/vscode/issues/66741')  
);  
参考：  
https://code.visualstudio.com/updates/v1_31  
### terminal使用不同的内核  
ctrl+shift+p，并输入setting，选择setting(JSON)，添加/替换以下代码：  
+ git-bash:  
"terminal.integrated.shell.windows": "E:\\Install\\Git\\Git\\bin\\bash.exe",  
+ powershell:  
"terminal.integrated.shell.windows": "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",  
### 后台语言运行  
#### lauch.json  
+ 属性：  
https://blog.csdn.net/yin__ren/article/details/82527527  
+ 变量  
https://blog.csdn.net/bat67/article/details/78302871  
+ 运行指定文件  
https://www.cnblogs.com/dreamfine/articles/6655839.html  
+ 入参：  
https://www.cnblogs.com/xbit/p/10060817.html  

## 搜索
### 指定项目+指定文件类型
files to include:
./my-blog-vuepress,*.md

## 插件
### Document This
    javascript的快速注释优秀的代码除了优秀的性能、规范的格式，注释也是不可或缺的，而且注释也应该有一套标准的注释方法，特别对于 JavaScript 这种语言。
    Document This 可以快速地帮你生成注释，如一些函数的注释还能帮你抽取出参数的定义等，是你编写规范代码必备的工具。
### ESLint
    ESLint 是一个语法规则和代码风格的检查工具，可以用来保证写出语法正确、风格统一的代码。
    而 VSCode 中的 ESLint 插件就直接将 ESLint 的功能集成好，安装后即可使用，对于代码格式与规范的细节还可以自定义，并且一个团队可以共享同一个配置文件，这样一个团队所有人写出的代码就可以使用同一个代码规范，在代码签入前每个人可以完成自己的代码规范检查。
### Beautify
    Beautify 插件可以快速格式化你的代码格式，让你在编写代码时杂乱的代码结构瞬间变得非常规整，代码强迫症必备，较好的代码格式在后期维护以及他人阅读时都会有很多的便利。
    插件支持的语言非常多，基本堵盖了目前所有的语言，而且你还可以自定义代码格式化的结构。
### vetur
vue语法高亮、智能感知、Emmet等
### Bracket Pair Colorizer
成对的彩色括号
![Image Text](./Bracket-Pair-Colorizer.png)
参考
https://www.cnblogs.com/zhaoshujie/p/9834654.html
### Markdown-AutoLinefeed  
让markdown文件自动换行
+ 等价于：  
空格*2+回车  
+ 快捷键：  
    + 自动换行：  
    ctrl+alt+a  
    + 自动空格替换&nbsp;:  
    ctrl+alt+f  
### view in browser(支持所有文件在浏览器预览) （自写）
+ #### step1: 设置vscode快捷键   
keybinding.json:   
```json  
{  
    "key": "ctrl+shift+o",  
    "command": "workbench.action.tasks.runTask",  
    "args": "Chrome"  
}     
```  
![Image Text](./vscode-keybinding.png)  
+ #### step2: 设置vscode任务（configure task）   
项目在vscode打开时，会自动生成.vscode文件夹（包含tasks.json）  
```json  
{  
    "label": "Chrome",  
    "type": "process",  
    "command": "chrome.exe",  
    "windows": {  
        "command": "C:\\Users\\ASUS\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe"  
    },  
    "args": [  
        "${file}"  
    ],  
    "problemMatcher": []  
}  
```  
![Image Text](./vscode-tasks.png)  
+ #### step3: 触发自定义插件  
ctrl+shift+t  
注意：  
将代码修改成如下，路径改成自己的(注脚本名子当前版本是label，以前的name和tagName都废弃了)  
https://blog.csdn.net/major_zhang/article/details/79330205  

## 问题
### 如何把vscode 窗口字体变大变小？
变大
ctrl++
变小
ctrl+-

