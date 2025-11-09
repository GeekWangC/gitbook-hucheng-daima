# 沪城代码：一个前端老兵的浮沉

一部以上海为背景的现实都市小说。主人公是一位 35 岁的前端老兵，在迭代如潮的技术浪里寻找“热更新”的人生方式。

- 主人公：35 岁前端老兵（陈砺）
- 城市背景：上海（陆家嘴、张江、愚园路、苏州河）
- 主题关键词：选择、迭代、热更新、秩序与自由

## 项目结构

- `book.json` GitBook 配置
- `README.md` 项目介绍与使用说明
- `SUMMARY.md` 目录
- `novel/chapter-01.md` 第一章：热更新的清晨

## 本地预览

1) 安装 Node.js（LTS）
2) 安装 GitBook CLI：`npm i -g gitbook-cli`
3) 本地预览：`gitbook serve`
4) 构建静态站点：`gitbook build`

若使用新版 GitBook（SaaS），亦可直接将内容迁移至其在线空间。

## 写作约定

- 章节文件放在 `novel/` 目录，命名为 `chapter-XX.md`
- 目录在 `SUMMARY.md` 中维护
- 使用简体中文与真实地名；技术名词保持英文原文或常见译名

欢迎提出人物走向和剧情设想，我会持续扩写。

## 在线预览（GitHub Pages）

- 站点地址：`https://geekwangc.github.io/gitbook-hucheng-daima/`
- 分支与流程：`master` 推送后触发 Actions 构建，产物部署到 `gh-pages` 分支

## 本地开发（推荐 HonKit）

```bash
# 进入子目录
cd gitbook-hucheng-daima

# 安装 HonKit（GitBook 社区维护分支）
npm i -g honkit

# 本地预览
honkit serve   # 打开 http://localhost:4000

# 构建静态站点
honkit build   # 产物在 _book/
```

## 部署说明

- CI 配置：`.github/workflows/gh-pages.yml`（Node 18 + HonKit）
- 部署目标：`gh-pages` 分支（`peaceiris/actions-gh-pages` 推送 `_book/`）

提示：若你仍使用老版 `gitbook-cli`，请将 Node 版本降到 12/14，并以 `gitbook serve/build` 运行；但推荐使用 HonKit 以兼容现代 Node。
