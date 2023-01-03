# 一键填充 github 代码热力图

效果如下图所示：

![image](https://user-images.githubusercontent.com/11046969/210342840-e40e7286-a93b-4a30-a26d-a8e776370046.png)

## 使用

1. 克隆本仓库到本地。
2. 执行 `rm -rf .git` 删除 git 目录。
3. 初始化 git，`git init` 并设置好 git 的用户名和邮箱。
3. 执行 `sudo ./s.sh 开始日期 结束日期` 如：`sudo ./s.sh 2022-01-01 2023-01-01`，等待片刻即可生成完成。
4. 执行 `git push` 推送到 github 即可。

> 注意：此脚本仅适用 MacOS 系统。
