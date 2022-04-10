# XAUFE_thesis
西安财经大学毕业设计模板

## 快速开始
打开`thesis`,使用`gnu make`,输入命令
```bash
make
```
即可得到所有版本。

或者使用`powershell`的构建脚本,
在`win 10`以上系统找到`thesis/make.ps1`,
右击选择运行。

### 运行失败处理方案
1. 以管理员身份运行powershell
2. 输入`set-ExecutionPolicy RemoteSigned`

## 所有版本的说明
### 草稿版本(draft)
对应`main.tex`中的
```latex
\documentclass[draft]{XaufeThesisTemplate}
```
该版本有学校的模板说明内容，无图片，有TODO清单，
中英文摘要有中英文对照,页眉有草稿标识
(其余相当于latex的草稿版本,其余的差异可自行查阅相关资料)

可以通过
```bash
make draft
```
单独构建该版本

### 电子书版本(ebook)
对应`main.tex`中的
```latex
\documentclass[draft,ebook]{XaufeThesisTemplate}
```
与上一版本内容相同，
只是变成了电子书大小，
方便个人的纠错。

可以通过
```bash
make ebook
```
单独构建该版本

### 正式版本(release)
对应`main.tex`中的
```latex
\documentclass{XaufeThesisTemplate}
```
去掉草稿，所有格式按照最终版本要求的内容相同
可以通过
```bash
make release
```
单独构建该版本

### 开题报告
对应`open_report.tex`文件，
用参数`openReport`指定开题报告的格式，即
```latex
\documentclass[openReport]{XaufeThesisTemplate}
```

用于开题报告,与正文共用参考文献
```bash
make open_report
```
单独构建该版本

## 目录结构
```text
.
├── .gitignore                    # 用于忽略中间文件的gitignore
├── README.md                   
├── src                           # 用于保存代码的文件夹
│   └── main.c
└── thesis                        # 用于保存论文latex文件的文件夹
    ├── XaufeThesisTemplate.cls   # 模板文件
    ├── explanations              # 模板中用于引用解释模板要求的文件夹
    │   ├── attachment.tex      
    │   ├── global.tex
    │   ├── reference.tex
    │   └── text.tex
    ├── figures                   # 论文的图片检索路径
    │   └── logo.png              # 学校logo  
    ├── information.tex           # 论文的个人信息
    ├── main.tex                  # 论文的主文件，里边有大致的框架结构
    ├── make.ps1                  # powershell 的构建脚本
    ├── makefile                  # gnu make 的构建脚本
    ├── open_report.tex           # 开题报告的主要文件
    ├── reference                 # 收集参考文献的文件夹
    │   ├── official_requests     # 备份官方要求
    │   │   ├── cover.doc
    │   │   ├── cover.pdf
    │   │   └── style_guide.pdf   # 个人留档的官方的论文排版要求
    │   └── reference.bib         # 参考文献
    └── sections                  # 文章内容分节保存
        ├── abstract.tex          # 摘要部分
        ├── cover.tex             # 封面
        ├── introduction.tex      # 引入
        ├── open_report           # 开题报告
        │   ├── cover.tex         # 开题报告封面
        │   ├── requirements.tex  # 开题报告的声明文本
        │   └── signature.tex     # 指导教师意见与签名部分
        ├── statement.tex         # 论文的版权声明
        ├── symbols.tex           # 符号说明
        └── thanks.tex            # 致谢
```
通过以上目录结构，
读者可以创造类似的结构便于最终学年论文的相关工作的进行。

Enjoy it!


## 使用许可
-   个人可以自由使用
-   转载需要经过本人授权
