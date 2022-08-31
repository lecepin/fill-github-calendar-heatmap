#!/bin/bash

if [[ $# -lt 2  ]]; then
    echo "必须提供开始时间和结束时间两个参数，如：$0 2022-01-01 $(date +%Y-%m-%d)"
    exit 1
fi

trap resetTime 0

START_DAY=$(date -jf "%Y-%m-%d" "$1" "+%s")
END_DAY=$(date -jf "%Y-%m-%d" "$2" "+%s")

resetTime() {
    # 恢复系统时间
    sntp -sS time.apple.com
}

modify() {
    echo "处理中……"
    while (( "${START_DAY}" <= "${END_DAY}" )); do
        # [[[mm]dd]HH]MM[[cc]yy][.ss]
        cur_day=$(date -r ${START_DAY} +"%m%d%H%M%Y")
        START_DAY=$((${START_DAY}+86400))
        
        # 修改系统时间
        date "${cur_day}"
        # 修改内容
        commit="${cur_day} https://github.com/lecepin/fill-github-calendar-heatmap"
        echo $commit > log.txt
        # 提交
        git add .
        git commit -m "${commit}"
        
        #sleep 1
    done
    
    echo "处理完成"
}

modify

exit 0