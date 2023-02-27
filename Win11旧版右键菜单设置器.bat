@echo off
TITLE Win11旧版右键菜单设置器v1_爱玩机的HLA 
:Start
CLS
ECHO. 
ECHO. 【Win11恢复旧版右键菜单v1.0】
ECHO. 
ECHO. 
ECHO. ==================================================================================
ECHO. 注意：选择开启旧版右键菜单后，默认会【重启资源管理器】，以便设置生效！
ECHO. ==================================================================================
ECHO.
ECHO.       请选择要进行的操作?
ECHO.
ECHO.           1.使用 Win10 风格【旧版】右键菜单
ECHO.
ECHO.           2.使用 Win11 风格【新版】右键菜单
ECHO.
ECHO.           3.手动重启资源管理器
ECHO.
ECHO.           0.完成退出
ECHO.
ECHO. ==================================================================================
:CHO
set choice=
set /p choice= 请输入对应数字，然后按回车键:
if /i "%choice%"=="1" goto Option1
if /i "%choice%"=="2" goto Option2
if /i "%choice%"=="3" goto Option3
if /i "%choice%"=="0" goto Eixt
echo 选择无效，请重新输入
echo.
GOTO Start

:Option1
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
taskkill /f /im explorer.exe
start explorer.exe
pause
GOTO Start

:Option2
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
pause
GOTO Start

:Option3
taskkill /f /im explorer.exe
start explorer.exe
pause
GOTO Start


:Eixt
exit
