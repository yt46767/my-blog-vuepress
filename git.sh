#!/usr/bin/env sh

# 给入参设置局部变量
log=$1

# 确保脚本抛出遇到的错误
set -e

# 添加变化的文件和已提交的变化文件到暂存区
git add -A 
# 暂存区提交到本地库
git commit -m log
# 

cd -