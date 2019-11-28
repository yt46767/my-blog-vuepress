#!/bin/bash
# author:yt46767

# 确保脚本抛出遇到的错误
set -e

# 使用说明：
# 命令       描述           
# --l        提交日志内容           
# --b        创建分支 
# --p        推送分支
# 示例：
# 创建分支feature/log，并提交代码到这个分支，提交内容是完善git.sh
#   sh git.sh --b "feature/log" --l "完善git.sh"
# 提交代码到分支master，提交内容是merge feature/log into master
#   sh git.sh --p "master" --l "merge feature/log into master"
# 提交代码到当前分支，提交内容是完善git.sh
#   sh git.sh --l "完善git.sh"

index=1  #定义序号
branchName="" #分支名,默认是master
commitContent="" #日志内容
task=0 #正在执行的任务数
## 遍历所有参数
for i in $*;do
    # 做运算：序号+1
    let index+=1
    if [ $i == "--l" ];then
        # echo $index
        value=$(eval echo '$'${index})
        if [ ! $value -o $value == "--b" -o $value == "--p" ];then
            echo "git日志内容不能为空！"
            exit
        else 
            commitContent=$value
        fi
    elif [ $i == "--b" -a $task -eq 0 ];then
        # echo $index
        let task+=1
        value=$(eval echo '$'${index})
        if [ ! $value -o $value == "--l" -o $value == "--p" ];then
            echo "git创建分支名不能为空！"
            exit
        else 
            branchName=$value
            # 创建git分支
            echo "正在创建分支$branchName..."
            git checkout -b "$branchName"
            echo "成功创建分支$branchName！"
        fi
    elif [ $i == "--p" -a $task -eq 0 ];then
        # echo $index
        let task+=1
        value=$(eval echo '$'${index})
        if [ ! $value -o $value == "--l" -o $value == "--p" ];then
            echo "git推送分支名不能为空！"
            exit
        else 
            branchName=value
        fi
    fi
done

# ---------- git提交代码 ---------------#
echo "正在提交代码..."
# 添加变化的文件和已提交的变化文件到暂存区
git add -A 
# 暂存区提交到本地库
git commit -m "$1"
# 将本地版本库的分支推送到远程服务器上对应的分支
if [ ! $branchName ];then
  git push 
else
  git push --set-upstream origin "$branchName"
fi
echo "成功提交代码！"

# 输出版本更新日志
echo "正在输出日志文件..."
rm -rf log/update.csv 
git log --date=iso --pretty=format:'"%h","%an","%ad","%s"' >> log/update.csv
echo "成功输出日志文件！"

# ---------- 提交日志 ---------------#
echo "正在提交日志文件..."
# 添加变化的文件和已提交的变化文件到暂存区
git add -A 
# 暂存区提交到本地库
git commit -m "提交git日志文件"
# 将本地版本库的分支推送到远程服务器上对应的分支
git push
echo "成功提交日志文件！"