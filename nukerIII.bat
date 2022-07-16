@echo off
title Nuker III - a Takeyo Project.
color 80
echo =====================================================
echo      Welcome to Nuker III, a Takeyo Project.
echo =====================================================
echo.
echo.
echo #####################################################
echo                 Make your choice!
echo #####################################################
echo _______________
echo ______
echo [1] DDOS TOOL
echo [2] IP LOOKUP
echo ______
echo ______________
echo.
echo.
:hub
set /p chococ=Enter your choice: 
if %chococ%==1 goto ddostool
if %chococ%==2 goto iplook
:ddostool
color 40
echo.
set /p var=IP/Host: 
title Preparing To Take ~%var%~ To The Grave
echo ================================
echo [..] Pinging Target IP "%var%"
echo ================================
:d
echo ==================================
echo        [!] Tool By Takeyo!
echo ==================================
:x
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color a
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color B
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color d
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color C
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color a
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color B
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color d
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color C
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color a
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color B
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color d
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color C
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color a
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color B
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color d
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color C
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
cls
GoTo d
:f
color 40     
echo          ___________          
echo   ____  / __/ __/ (_)___  ___ 
echo  / __ \/ /_/ /_/ / / __ \/ _ \
echo / /_/ / __/ __/ / / / / /  __/
echo \____/_/ /_/ /_/_/_/ /_/\___/ 
color 04
goto x
:iplook
@echo off
title Takeyo's IP Lookup
color 04
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nul
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul
:menu
cls
color 20
echo.                                                                
echo =====================================================
echo                     IP LOOKUP
echo =====================================================
echo [1] Check Your IP
echo [2] Search up an IP
echo =====================================================
goto action
:input
echo.
echo [!] Please enter a valid input option.
echo.
:action
echo.
set /p action=Enter Your Choice:  
if '%action%'=='1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
if '%action%'=='2' goto iplookup
goto input
:iplookup
cls
echo.
echo                          Type an IP to lookup
echo.
set ip=127.0.0.1
set /p ip=IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  [...] Looking up IP Address. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo [.] Did not receive a response from the API.
echo.
pause
goto menu
:response_exist
cls
echo.
echo Information for "%IP%"
for /f "delims= 	" %%i in ('findstr /i "," %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:hostname:=Hostname: !
        set data=!data:country:=Country: !
	set data=!data:region:=State or Provinence: !
	set data=!data:city:=City or Town: !		                        	                        
	set data=!data:org:=Internet Service Provider: !		        		                	                	                        
	set data=!data:postal:=Postal Code: !	                        
	set data=!data:timezone:=Timezone: !	                        
	echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
set /p erf=Press enter to ping your target!
goto hub
if '%ip%'=='' goto menu
goto iplookup