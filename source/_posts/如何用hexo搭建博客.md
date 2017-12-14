---
title: 如何用hexo搭建博客
date: 2017-12-14 23:49:21
tags:
---
首先cd ~/Desktop,在 GitHub 上新建一个空 repo，repo 名称是「zxldcr.github.io」
npm install -g hexo-cli，安装 Hexo
hexo init myBlog
cd myBlog
npm i
hexo new 开博大吉，看到一个 md 文件的路径(Windows 的路径中的 \ 需要变成 / )
start ~/Desktop/myBlog/source/_posts/搭建博客.md，编辑这个 md 文件.（Ubuntu 系统用 xdg-open xxxxxxxxxxxxxxxxxxx.md 命令）
start _config.yml，编辑网站配置
把第 6 行的 title 改成想要的名字
把第 9 行的 author 改成自己的大名
把最后一行的 type 改成 type: git
在最后一行后面新增一行，左边与 type 平齐，加上一行 repo: 仓库地址 （将仓库地址改为「zxldcr.github.io」对应的仓库地址，仓库地址以 git@github.com: 开头
第 4 步的 repo: 后面有个空格，不要眼瞎。
npm install hexo-deployer-git --save，安装 git 部署插件
hexo deploy
进入「zxldcr.github.io」对应的 repo，打开 GitHub Pages 功能，如果已经打开了，就直接点击预览链接https://zxldcr.github.io/zxldcr.github.io/index.html
现在就能看到博客！

再提交博客时

hexo new 第二篇博客
复制显示的路径，使用 start 路径 来编辑它
hexo generate
hexo deploy
就能看到第二篇博客了

换主题

https://github.com/hexojs/hexo/wiki/Themes 上面有主题合集
随便找一个主题，进入主题的 GitHub 首页，比如我找的是 https://github.com/iissnan/hexo-theme-next
复制它的 SSH 地址或 HTTPS 地址，假设地址为 git@github.com:iissnan/hexo-theme-next.git
cd themes
git clone git@github.com:iissnan/hexo-theme-next.git
cd ..
将 _config.yml 的第 75 行改为 theme: hexo-theme-next，保存
hexo generate
hexo deploy
等一分钟，然后刷新你的博客页面，你会看到一个新的外观。如果不喜欢这个主题，就回到第 1 步，重选一个主题。
上传源代码

注意「你的用户名.github.io」上保存的只是你的博客，并没有保存「生成博客的程序代码」，你需要再创建一个名为 blog-generator 的空仓库，用来保存 myBlog 里面的「生成博客的程序代码」。

在 GitHub 创建 blog-generator 空仓库

记住，别 TMD 用 HTTPS 地址。

这样一来，你的博客发布在了「你的用户名.github.io」而你的「生成博客的程序代码」发布在了 blog-generator。所有数据万无一失，你就不会因为误删 myBlog 目录而痛哭了。

以后每次 hexo deploy 完之后，博客就会更新；然后你还要要 add / commit /push 一下「生成博客的程序代码」，以防万一。

这个 blog-generator 就是用来生成博客的程序，而「你的用户名.github.io」仓库就是你的博客页面。