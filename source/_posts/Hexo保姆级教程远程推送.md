---
title: Hexo保姆及教程 远程推送
date: 2021-05-20
url: hexopush
cover_img: https://gitee.com/htmlmi/htmlmi/raw/master/images/20210520172513.png
fenlei: HEXO
categories: 
- 经验分享
tags:
- Hexo
- Github
- 教程
- Github Actions
---

接着上一节教程 我们已经搭建了本地的hexo博客 接下来会给大家讲解如何推送到 Github 远程仓库

首先 推送到Github 需要用到 Git 软件 上一节课有下载地址 其次推荐使用 SSH 传输

如果你会如何把源码远程推送到Github仓库的话 可以跳过第一小节课程直接点我看 [通过 GitHub Actions 自动部署](#Actions)

### **远程仓库SSH KEY设置**

本地Git仓库和Github仓库之间可以通过SSH传输，需要在个人Github页面setting中添加SSH key。

**1、首先打开Git Bash输入命令：**

```bash
ssh-keygen -t rsa -C "4370142@qq.com"  //记得修改后面这个邮箱 别傻傻的复制我的
```

输入完以后 无脑回车  当看到下图指示 说明密钥创建成功

![](https://gitee.com/htmlmi/htmlmi/raw/master/images/20210517145913.png)

2、成功后 我们打开我的电脑路径 `C:\Users\Administrator\.ssh` 目录就可以看到刚才创建的密钥文件

```bash
id_rsa  (私钥文件)
id_rsa.pub (公钥文件)
```



如果你不知道当前电脑用户名叫啥 也可以按 WIN+R 然后输入 `%USERPROFILE%\.ssh` 可以直接打开你的密钥文件夹

**3、把公钥粘贴到GitHub**

登录Github、点击settings、点击SSH and GPG keys 新建 New SSH key

![image-20210520150027781](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520150027781.png) 

打开公钥文件 `id_rsa.pub`  把里面的代码复制 粘贴到 Github

![image-20210520150359470](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520150359470.png)

### 创建仓库

![image-20210520150613445](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520150613445.png)

新建一个 Github 仓库 并且获取它的 SHH地址。

由于敲命令太难懂了 所以接下来 我使用的是Git GUI给大家演示操作

在上一节课 创建好的博客目录 右键选择 `Git GUI Here`  

![image-20210520152309782](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520152309782.png)

在弹出的菜单选择第一个 `Create New Repository`  然后选择你的博客目录 作为本地仓库目录

选择好目录后点击 Create 得到下面的结果

![image-20210520152726153](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520152726153.png)

接下来点击 `Remote > Add`  也就是添加远程仓库地址：

![image-20210520153003239](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520153003239.png)

Name：你的 Github 用户名  Location：你的 仓库SSH地址 填写完成 点击Add

由于2020年的时候 Github 现已经把默认分支 master 改成了 main 所以接下来我们也需要修改下本地分支

点击 `Branch>Rename`  后  修改成 main  点击 Rename即可 

![image-20210520153559506](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520153559506.png)



最后点击 `Edit > Options` 在全局 跟 单个仓库这里都填写下 你的 Github用户名 跟邮箱

![image-20210520153838368](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520153838368.png)



然后分别 点击 GUI上面的 1 2 3 4 5 提交就可以把代码推送到仓库了。

![image-20210520154104584](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520154104584.png)



第五步的时候 如果推送失败 记得勾选下 强制推送

![image-20210520154245655](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520154245655.png)



到这里 打开你创建的仓库就可以看到代码已经全部提交上去了，这时候网站还是没办法访问呢，因为推送的是源码



### 通过 GitHub Actions 自动部署{#Actions}

接下来就是教你如何通过 GitHub Actions 来自动部署 ，当我们把文章推送到仓库后 Github 自动帮我们部署静态页面

来到 SSH 目录空白地方右键选择 `Git Bash Here`  执行下面命令 可以获得两个密钥文件

```bash
ssh-keygen -t rsa -b 4096 -C "Hexo Demo Key" -f github-deploy-key -N ""
复制上面代码执行得到文件：
github-deploy-key  （私钥文件）
github-deploy-key.pub  （公钥文件）
```

**GitHub 配置秘钥**

我们把`私钥`放到我们存放 Hexo 原始文件的代码仓库里面，用于触发 Actions 时使用。
把`公钥`放到 GitHub Pages 对应的代码仓库里面，用于 Hexo 部署时的写入工作。

**配置私钥**

首先在 GitHub 上打开创建的 demohexo 的仓库，访问 `Settings -> Secrets`，画面如下：

![image-20210520160937761](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520160937761.png)



配置私钥名字部分填写：`HEXO_DEPLOY_KEY`，注意大小写，这个后面的 GitHub Actions Workflow 要用到，一定不能写错。
把 `github-deploy-key `文件的内容粘贴进来 提交



![image-20210520161307462](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520161307462.png)

**配置公钥**

接下来我们给 demo 仓库部署公钥（当然这一步也可以单独创建一个仓库 达到源码 跟 静态网页分两个仓库存放的目的）
我这里就不再创建了 一直把源码跟静态文件放到一个仓库 的不同分支也可以实现

点击 `Settings -> Deploy keys` 按 `Add deploy key` 来添加一个新的公钥

![image-20210520161927368](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520161927368.png)

在 `Title` 中输入：`HEXO_DEPLOY_PUB` 字样，当然也可以填写其它自定义的名字。
在 `Key` 中粘贴 `github-deploy-key.pub` 文件的内容。

> 注意：一定要勾选 `Allow write access` 来打开写权限，否则无法写入会导致部署失败。



**创建 Workflow**

首先在 demo 的目录中创建一个新文件：`.github/workflows/deploy.yml`，文件名可以自己取

![image-20210520162712777](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520162712777.png)

但是一定要放在 `.github/workflows` 目录中，文件的内容如下：

```yaml
name: Hexo Deploy

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-18.04
    if: github.event.repository.owner.id == github.event.sender.id

    steps:
      - name: Checkout source
        uses: actions/checkout@v2
        with:
          ref: main

      - name: Setup Node.js
        uses: actions/setup-node@v1
        with:
          node-version: '12'

      - name: Setup Hexo
        env:
          ACTION_DEPLOY_KEY: ${{ secrets.HEXO_DEPLOY_KEY }}
        run: |
          mkdir -p ~/.ssh/
          echo "$ACTION_DEPLOY_KEY" > ~/.ssh/id_rsa
          chmod 700 ~/.ssh
          chmod 600 ~/.ssh/id_rsa
          ssh-keyscan github.com >> ~/.ssh/known_hosts
          git config --global user.email "4370142@qq.com"
          git config --global user.name "htmlmi"
          npm install hexo-cli -g
          npm install

      - name: Deploy
        run: |
          hexo clean
          hexo deploy
```

简单解释一下，当我们推送内容到远程 `main` 分支的时候，就会触发这个 Workflow。
使用 `Ubuntu 18.04` 作为 `hexo deploy` 的系统。
接下来就是创建 SSH 相关的配置文件，注意 `secrets.HEXO_DEPLOY_KEY` 就是对应我们之前设置的私钥，所以名字一定不要搞错。
还有就是把 里面的 email 跟 name 改成你自己的Github信息

**配置 _config.yml**

最后 修改 博客根目录的 _config.yml 文件，这里注意是 根目录 不是主题目录 最下面修改成

```yaml
deploy:
  type: git
  repository: git@github.com:htmlmi/hexodemo.git
  branch: pg-hexo
```

也就是 当我们 Github Actions 工作的时候 执行的hexo d 就是把网页静态文件推送到 pg-hexo分支

到这里整个教程就结束了

最后就是设置 Github Pages 跟绑定域名了

![image-20210520165559983](https://gitee.com/htmlmi/htmlmi/raw/master/images/image-20210520165559983.png)

绑定域名后 启用HTTPS 就可以访问啦：

演示地址： https://demo.timiy.cn  

由于朋友那边需要 本人也仿制了一套这个主题的Wordpress版本 演示地址： http://demo.htmlmi.com/shadow

Wordpress 主题目前定价39元一份，主题代码不加密。购买上传即可用



### 如何写文章

推荐使用 Typora 来编写文章，只需要打开 `source > _posts`  目录 创建.md文件即可编写文章

写完可以单独把文件上传到github 也可以使用 Git GUI推送上去 然后Github Actions 会自动帮你部署 刷新就可以看到效果了

