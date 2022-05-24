### Git命令

* git init 初始化版本库

* git add < file > 添加文件到版本库

* git commit -m < message > 提交文件，-m 后面输入的是本次提交的说明，可以输入任意内容

* git status 可以时刻掌握仓库当前的状态

* git diff 查看文件修改内容

* git log 可以查看提交历史

* git reset --hard commit_id 回退至上一个版本，HEAD指向的版本就是当前版本

* git reflog 查看命令历史

* git checkout -- < file >... 在工作区的修改全部撤销,git checkout -- file命令中的--很重要，没有--，就变成了“切换到另一个分支”的命令

* git rm file 从版本库删除该文件

* git remote add origin git@server-name:path/repo-name.git 关联一个远程库，远程库的名字为origin

* git push -u origin master **第一次**推送master分支的所有内容

* git push origin master 推送最新修改

* git remote -v 查看远程库信息

* git remote rm < name > 删除远程库，接触本地库与远程库的关系

* git clone 克隆远程库到本地

* git checkout 命令加上 -b 参数表示创建并切换分支

* git branch 查看当前分支

* git merge 合并分支至当前分支

* git branch -d branchname 删除分支

* git switch -c dev 创建并切换到新的dev分支

* git switch branchname 直接切换到已有的分支

* git log --graph 查看分支合并图

* git stash 存储工作区

* git stash apply 恢复工作区，但stash内容不删除

* git stash drop 删除stash内容

* git stash pop 恢复工作区，同时删除stash内容

* git stash list 查看已存储的工作区

* git cherry-pick < commit > 把bug提交的修改“复制”到当前分支，避免重复劳动

* git branch -D < name > 强行删除未合并分支

* git pull 拉取远程最新提交

* git checkout -b branch-name origin/branch-name 在本地创建和远程分支对应的分支

* git branch --set-upstream branch-name origin/branch-name 建立本地分支和远程分支的关联

* git rebase 把本地未push的分叉提交历史整理成直线

* git tag < name > 创建标签

* git show < tagname > 查看标签信息

* git tag -a < tagname > -m "*****" 可以指定标签信息

* git push origin < tagname > 推送一个本地标签到远程库

* git push origin --tags 推送全部未推送过的本地标签

* git tag -d < tagname > 删除一个本地标签

* git push origin :refs/tags/< tagname > 删除一个远程标签
