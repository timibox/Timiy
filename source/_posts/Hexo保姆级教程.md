---
title: Hexo保姆及教程 学不会退款
date: 2021-05-11
url: variable
cover_img: https://gitee.com/htmlmi/htmlmi/raw/master/images/tool/hexoboke.png
fenlei: HEXO
categories: 
- 经验分享
tags:
- Hexo
- Github
- 教程
---

作为一个互联网菜鸟怎么可能没有一个自己的博客呢，但是服务器又太贵(主要是买来也是吃灰**😆**)，国内建站还需要北岸 所以使用`Hexo`白嫖`Github`来创建博客的教程就诞生了

![](https://cdn.jsdelivr.net/gh/htmlmi/hexo/img/gitdemo.webp)

### 教程步骤

教程一共分为三个步骤：

- [x] 本地搭建部署Hexo
- [x] 选择并且设置主题
- [ ] 通过Gtihub Actions实现持续部署
- [ ] 通过HexoPlusPlus实现在线写作

### 本地搭建部署Hexo

所需用到的工具为 Git  [Git 官网](https://www.git-scm.com/)
贴心的我 也给大家准备了 蓝奏网盘 [点我下载](https://timiy.lanzoui.com/iFE3yp11p2j)
Node.js 下载地址：[点我下载](https://nodejs.org/dist/v14.16.1/node-v14.16.1-x64.msi)

Git 跟 Node.js 安装我就不讲了 无脑下一步就行。安装完成后 我们就开始吧

第一步：安装Hexo

```bash
$ npm install hexo-cli -g
```

第二部：初始化Hexo

```bash
$ hexo init demo
```
> 这个demo可以自己取什么名字都行

第三步：进入博客目录执行

```bash
cd demo
npm install
```

一切完成后 再输入 `hexo server` 或 `hexo s` 即可完成本地部署

> 当我们执行 代码 hexo server 后 控制台会得到 一个 `localhost:4000` 则表示成功了>
> 打开看看 是不是完整的一个 Hexo 已经搭建成功了😋

### 设置主题

娶了媳妇怎么必定是要精心打扮一番才行，所以这一步我们就给Hexo设置自己心怡的主题
今天给大家土建的一款 简洁漂亮的博客主题 ：https://linhong.me

首先打开他的Github 下载主题 [hexo-theme-aomori](https://github.com/lh1me/hexo-theme-aomori)
贴心的我 也给大家准备了 蓝奏网盘 [主题下载](https://timiy.lanzoui.com/iiq9cp12mej)

下载后解压到 刚才创建的 `demo>themes` 目录下面 并改名 `hexo-theme-aomori`
<div  align="left">    
<img src="https://gitee.com/htmlmi/htmlmi/raw/master/images/tool/20210511174718.png" />
</div>



然后打开 demo 根目录的 `_config.yml` 文件 查找搜索 `theme` 修改成

```bash
theme: hexo-theme-aomori
```

回到控制台 以后输入 `CTRL+S` 后重新刷新网页  主题已经变成新主题了

![](https://gitee.com/htmlmi/htmlmi/raw/master//images/tool/20210511175553.png)

具体主题使用以及修改方法 我这里就不再表述了
可以查看主题作者的使用文档：[Aomori | 使用文档](https://linhong.me/2020/01/27/hexo-theme-aomori/)

到这里 本地部署以及更换主题已经学会了吧  如果还没学会请面壁思过去😡

😁😁😁 下班了 明天再写推送到 Github 以及 Gtihub Actions 自动部署

