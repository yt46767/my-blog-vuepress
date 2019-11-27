#!/bin/bash
# author:yt46767

# 变量赋值，说明表如下：
# 序号       描述           变量
# $0        提交日志内容    log
commitContent=$0

# 确保脚本抛出遇到的错误
set -e

# 添加变化的文件和已提交的变化文件到暂存区
git add -A 
# 暂存区提交到本地库
git commit -m commitContent
# 将本地版本库的分支推送到远程服务器上对应的分支
git push

# 输出版本更新日志
rm -rf log/update.csv 
git log --date=iso --pretty=format:'"%h","%an","%ad","%s"' >> log/update.csv

cd -