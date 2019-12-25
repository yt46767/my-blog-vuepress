#!/bin/bash
# author:yt46767
# 示例：
# sh test.sh --l "修复" --b "feature/log"
# sh test.sh --b "feature/log" --l "修复" 

index=1  #定义序号
task=0 #正在执行的任务数
## 遍历所有参数
for i in $*;do
    let index+=1
    if [ $i == "--l" -a $task -eq 0 ];then
        # echo $task
        # echo $index
        let task+=1
        value=$(eval echo '$'${index})
        if [ ! $value -o $value == "--b" ];then
            echo "git日志内容不能为空！"
        else 
            echo "正在提交代码..."
        fi
    elif [ $i == "--b" -a $task -eq 0 ];then
        # echo $task
        # echo $index
        let task+=1
        value=$(eval echo '$'${index})
        if [ ! $value -o $value == "--l" ];then
            echo "git分支名不能为空！"
        else 
            echo "正在执行创建分支$value..."
        fi
    fi
done