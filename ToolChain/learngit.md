### Git命令

#### ​​一、git初始化本地仓库和配置

* git init 初始化版本库

#### 二、提交文件

* git add < file > 添加文件到暂存区

* git commit -m < message > 提交文件，-m 后面输入的是本次提交的说明，可以输入任意内容

* git status 查看当前仓库的状态

* git diff 查看文件修改内容

#### 三、回退

1、查看commit信息和命令信息

* git log 可以查看提交历史

* git log --graph 看到分支合并图

* git log --graph --pretty=oneline --abbrev-commit

* git log -p + 文件名（可查看该文件以前每一次push的修改内容）

* git log - p -1 + 文件名（只查看该文件当前这一次的push内容）

* git reflog 查看命令历史

2、回退

* git reset --hard commit_id 回退至上一个版本，HEAD指向的版本就是当前版本。除了--hard参数外，还有--soft，--mixed

  * --hard 回退到某个版本commit之前的状态

  * --soft 回退到某次commit前的stage状态（即处于暂存状态）

  * --mixed回退到add前的状态（即处于工作区，如果有stash，需通过stash pop之后才能真的回到暂存的状态）

3、HEAD介绍

* HEAD指向的版本就是当前版本，HEAD^,前一个版本，HEAD^^前两个，HEAD~100，前100个版本

4、查看远程log

* git fetch --all 可以把远程的commit信息拉到本地更新到本部版本库的master HEAD指针上，然后利用git log和git reflog进行查看操作

#### 四、切换暂存区、工作区

* git stash 存储工作区

* git stash apply 恢复工作区，但stash内容不删除

* git stash drop 删除stash内容

* git stash pop 恢复工作区，同时删除stash内容

* git stash list 查看已存储的工作区

#### 五、删除文件

1、删除本地文件

* git rm file 从版本库删除该文件

2、误删撤销

* git checkout -- < file >... 在工作区的修改全部撤销,git checkout -- file命令中的--很重要，没有--，就变成了“切换到另一个分支”的命令

3、删除远程文件

* git rm -r --cached --force .idea/  删除文件不需要加-r，删除文件夹需要-r， 该文件夹路径为本地文件夹所在路径

#### 本地分支与远程分支

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
