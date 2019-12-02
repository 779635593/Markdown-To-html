@echo off 
title Markdown To Html
setlocal ENABLEDELAYEDEXPANSION  
::===将 Markdown 文件生成带左侧目录栏的 html文件
::===操作教程：node环境：
::=== npm install -g i5ting_toc
::=== i5ting_toc -h	查看插件用法
::=== i5ting_toc -f 文件.md -o
::=== git地址：https://github.com/i5ting/tocmd.npm

::===在这里设置你的后缀名
set houzhui=.md
::===在这里设置你要搜索的路径,这里设置为批处理所在目录 
set pwd=%~dp0 
for /R "%pwd%" %%i in (*) do ( 
::===这里是记录文件名,根据要求记录吧 
set filename=%%~nxi 
call :check %%~xi 
) 
Echo ok & pause > nul
 
:check 
for %%i in (%houzhui%) do ( 
::===判断后输出 执行node命令 && i5ting_toc -f !filename!
if "%1"=="%%i" echo %filename% && i5ting_toc -f %filename%
) 
goto :eof 