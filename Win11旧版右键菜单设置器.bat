@echo off
TITLE Win11�ɰ��Ҽ��˵�������v1_�������HLA 
:Start
CLS
ECHO. 
ECHO. ��Win11�ָ��ɰ��Ҽ��˵�v1.0��
ECHO. 
ECHO. 
ECHO. ==================================================================================
ECHO. ע�⣺ѡ�����ɰ��Ҽ��˵���Ĭ�ϻ᡾������Դ�����������Ա�������Ч��
ECHO. ==================================================================================
ECHO.
ECHO.       ��ѡ��Ҫ���еĲ���?
ECHO.
ECHO.           1.ʹ�� Win10 ��񡾾ɰ桿�Ҽ��˵�
ECHO.
ECHO.           2.ʹ�� Win11 ����°桿�Ҽ��˵�
ECHO.
ECHO.           3.�ֶ�������Դ������
ECHO.
ECHO.           0.����˳�
ECHO.
ECHO. ==================================================================================
:CHO
set choice=
set /p choice= �������Ӧ���֣�Ȼ�󰴻س���:
if /i "%choice%"=="1" goto Option1
if /i "%choice%"=="2" goto Option2
if /i "%choice%"=="3" goto Option3
if /i "%choice%"=="0" goto Eixt
echo ѡ����Ч������������
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
