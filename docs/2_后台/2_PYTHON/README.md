## 安装
### python版本推荐
2.7（应用都支持，但不维护了）
3.5（应用大部分支持，先学习新的，降低以后的学习成本）
3.8（应用跟不上，不建议）
### 下载地址
https://www.python.org/downloads/
### 目录
+ python2.7.0
C:\Python27
+ python3.5.0
C:\Users\ASUS\AppData\Local\Programs\Python\Python35
+ python3.8.0
C:\Users\ASUS\AppData\Local\Programs\Python\Python38
### virtualenv管理不同python版本的虚拟环境
virtualenv -p C:\Users\ASUS\AppData\Local\Programs\Python\Python35\python.exe env
参考：
https://www.linuxidc.com/Linux/2017-06/145169.htm
### 默认安装目录（Local）
C:\Users\ASUS\AppData\Local\Programs\Python\Python38\
### 数据文件（Roaming）
C:\Users\ASUS\AppData\Roaming\Python\Python38\  
C:\Users\ASUS\AppData\Roaming\Python\Python38\Scripts\
### 安装版本：  
https://www.python.org/downloads/release/python-380/  
### 支持软件版本检测
py
// 64位
import pip._internal;print(pip._internal.pep425tags.get_supported());
// 32位
import pip;print(pip.pep425tags.get_supported());
// 其他
import wheel.pep425tags;print(wheel.pep425tags.get_supported());
参考：
https://blog.csdn.net/IDzengkun/article/details/89310164
### 第三方包安装位置  
C:\Users\ASUS\AppData\Local\Programs\Python\Python38\Lib\site-packages 
### 新增python环境变量  
C:\Users\ASUS\AppData\Local\Programs\Python\Python38\
C:\Users\ASUS\AppData\Local\Programs\Python\Python38\Scripts\
### Python38-64位-执行命令：
py 或 python
### pip3  
默认python程序包里，已包含：pip和pip3执行程序
设置python环境变量后，即可使用pip和pip3命令！


## 基础  
### 安装第三方模块  
+ 安装命令：  
pip3 install np  
+ 安装目录：  
E:\Install\Python\Python38-32\Lib  
E:\Install\Python\Python38-32\Lib\site-packages  
### 用国内镜像（豆瓣网）下载第三方模块  
pip3 install [包名] -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com  
+ 永久使用国内镜像  
https://www.cnblogs.com/cqliu/p/11131092.html  
https://www.cnblogs.com/meng9688/p/10216449.html  
+ 配置目录：(前提：python非默认安装)  
C:\Users\ASUS\pip\pip.ini  
+ 验证是否成功使用镜像：  
执行安装第三方模块时，控制台日志会输出：  
Looking in indexes: http://pypi.douban.com/simple/  
### pip3  
+ 查看pip3已安装的模块清单  
pip3 list  
+ pip3更新模块版本  
pip3 install --upgrade module_name  
+ pip3更新自身  
py -m pip install --upgrade pip  
### easy_install  
+ 安装  
easy_install module_name  
+ 卸载  
easy_install -m module_name  
错误写法：  
easy_install module_name -m  
### 查看python安装版本  
python -V 或 py -V  
显示：Python 3.8.0  
### python自动安装第三方库（自动安装第三方包.py）  
https://blog.csdn.net/oxgencui/article/details/84571271   

## 插件  
### 包管理器 —— pipreqs  
https://www.cnblogs.com/LearningOnline/articles/9778495.html  
+ step1: 安装包管理器  
pip3 install pipreqs  
+ step2: 自动生成当前项目包依赖文件：requirements.txt  
pipreqs ./ --encoding=utf8 --force  
+ step3: 安装第三方包  
pip3 install -r requirements.txt  
### 包依赖文件  
+ 方法一：提供包依赖关系文件（requirements.txt）  
pip install -r requirements.txt  
+ 方法二：提供包依赖关系文件（setup.py）  
python setup.py install  
### venv（支持python3.3之上）  
venv：Python 标准库内置的虚拟环境管理工具，Python 3.3 加入，Python 3.5 开始作为管理虚拟环境的推荐工具，用法类似 virtualenv。如果你使用 Python 3，推荐使用 venv 来替代 virtualenv。  
弊端：  
在Python3.3中使用”venv”命令创建的环境不包含”pip”，你需要进行手动安装。但是只有版本在3.3之上都没有问题啦  
安装：  
python -m evnv  
激活该虚拟环境：  
-windows进到目录里，的Script文件夹输入：activate  
退出虚拟环境：  
-deactivate  
https://www.cnblogs.com/zhaof/p/7299025.html  
### 隔离的虚拟环境包virtualenv（兼容性强）  
+ 安装virtualenv：  
pip3 install virtualenv  
+ 创建纯净虚拟环境：  
virtualenv env  
注：在当前目录创建名为 env 的虚拟环境文件夹  
或 创建环境，继承原安装的模块（感觉纯净和非纯净，都一样！）  
virtualenv --system-site-packages env  
+ 你需要把这个文件夹名称加入 .gitignore 文件以便让 Git 忽略  
+ 激活虚拟环境：  
env\scripts\activate  
+ 退出虚拟环境：  
deactivate  
+ 删除虚拟环境：  
直接删除虚拟环境所在目录即可  
+ 参考：  
https://www.cnblogs.com/cloudrivers/p/11546155.html  
### opencv-python  
#### API文档  
http://www.opencv.org.cn/opencvdoc/2.3.2/html/modules/imgproc/doc/structural_analysis_and_shape_descriptors.html?highlight=drawcontours#cv2.drawContours  
https://www.w3cschool.cn/opencv/ 
#### 案例  
链接：https://pan.baidu.com/s/1ZBN080qddu6Fz1tsvQqdOA  
提取码：z9lz  
教程视频：  
https://www.bilibili.com/video/av59316056/?p=15&t=658   

## 资源  
### python的第三方包库  
https://pypi.org/  

## 问题  
### pip版本过低，需要更新pip：  
python -m pip install --upgrade pip  
### pip坑  
https://www.cnblogs.com/fengzifengfeng/p/10744706.html  
### pip更新：Requirement already up-to-date  
+ 解决：  
1. 在虚拟环境下，将pip-18.0.dist-info目录删除  
2. 继续在虚拟环境下重新更新pip  
python -m pip install --upgrade pip  
+ 参考：  
http://www.freesion.com/article/888954596/  
### Python虚拟环境下pip,python错误地引用全局环境  
https://blog.csdn.net/qq_40965177/article/details/85993254  
解决：  
https://blog.csdn.net/qq_28702661/article/details/82592874  
### opencv-python、cv2  
方法一：  
1. 在https://pypi.org/project/opencv-python/#files下载：opencv_python-4.1.1.26-cp35-cp35m-win_amd64.whl (39.0 MB)  
2. 新建一个“opencv”文件夹，将下载文件（opencv_python-4.1.1.26-cp35-cp35m-win_amd64.whl）放于其中  
3. 在'opencv'目录下，shift+右键，打开命令行：  
pip install opencv_python-4.1.1.26-cp35-cp35m-win_amd64.whl  
文件：  
参考：  
https://blog.csdn.net/qq_23981335/article/details/80545839  
关键网址：  
https://pypi.org/project/opencv-python/#files  
+ 方法二：  
手动下载cv2包，解压后将cv2.pyd放到site_packages的目录下，下载地址：https://pypi.python.org/pypi/cv2-wrapper/0.1  
参考：  
https://www.cnblogs.com/syw20170419/p/8418302.html  
### python2.x版本：“UnicodeEncodeError: 'ascii' codec can't encode character u'\u258c' in position 8: ordinal not in range(128)”  
解决方法：  
在site-packages文件里，新建文件sitecustomize.py  
参考：  
https://www.bbsmax.com/A/VGzlNYXw5b/  
### pip-install-kaacq2\numpy\  
Python version >= 3.5 required  
### (-215:Assertion failed) npoints > 0 in function  
+ 原因：  
opencv的findContours兼容性  
+ 解决方法：  
contours = contours[0] if imutils.is_cv2() else contours[1]  
imutils.is_cv2()是返回False即使它应该返回True。如果您不介意删除此依赖项，请更改为：  
contours = contours[0]  
我找出原因了。您关注的教程可能是在OpenCV 4发布之前发布的。OpenCV 3更改cv2.findContours(...)为return image, contours, hierarchy，而OpenCV 2cv2.findContours(...)和OpenCV 4的cv2.findContours(...) return contours, hierarchy。因此，在使用OpenCV 4之前，可以正确地说，如果您使用OpenCV 2，则应该使用contours[0]else contours[1]。如果您仍然希望拥有这种“兼容性”，则可以更改为：  
contours = contours[1] if imutils.is_cv3() else contours[0]  
+ 参考：  
https://stackoverflow.com/questions/54734538/opencv-assertion-failed-215assertion-failed-npoints-0-depth-cv-32  

## 调试
### 调试位置
https://www.v2ex.com/amp/t/375159
### lauch.json设置参数
https://www.cnblogs.com/xbit/p/10060817.html
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python: Current File (Integrated Terminal)",
            "type": "python",
            "request": "launch",
            "program": "${file}",
            "console": "integratedTerminal",
            "args": [
                "--config",
                "configs/example.json"
            ]
        },
.....
重点：
"args": [
    "--config",
    "configs/example.json"
]