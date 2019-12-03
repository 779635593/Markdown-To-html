@echo off  & color 0E
title Markdown To Html

goto start
注释：
	将 bat脚本文件所在目录的 Markdown 文件生成带左侧目录栏的html文件于 preview 中 ，文件名中不能有空格等特殊字符。
	操作教程：node环境：
	npm install -g i5ting_toc
	i5ting_toc -h	查看插件用法
	i5ting_toc -f 文件.md -o
	作者git地址：https://github.com/i5ting/tocmd.npm
:start

for %%f in (*.md) do ( 
	i5ting_toc -f %%f 
)
pause
