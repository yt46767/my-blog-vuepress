## 基础
参考：
https://github.com/nelsonkuang/markdown
### 描点
即：内部跳转，目录/标题点击跳转
<a href="#1">第一段</a>
### 代码块（```）类型
https://blog.csdn.net/derstsea/article/details/85131434
### 图片大小、居中
https://blog.csdn.net/qq_35451572/article/details/79443467

## 工具
### pandoc
+ 安装后
+ 验证是否安装成功：
```
pandoc -v
```
+ 导出doc
```
pandoc -f markdown -t html  ./test.md | pandoc -f html -t docx -o output.docx
```
### markdown在线文档转换（doc/html/pdf）
http://coolaf.com/tool/md
