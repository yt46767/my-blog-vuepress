#AutoInstaller.py
import os

#libs为要安装的第三方库集合
libs ={"beautifulsoup4","requests"}
try:
    for lib in libs:
        os.system("pip install "+lib)
    print("Successful")
except:
    print("Failed Somehow")