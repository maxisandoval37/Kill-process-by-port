@echo off & setlocal EnableDelayedExpansion
color 0A
title Kill-Process-By-Port

:main
echo.
echo                  _________-----_____
echo        ____------           __      ----_
echo  ___----             ___------              \
echo     ----________        ----                 \
echo                -----__    ^|             _____)
echo                     __-                /     \
echo         _______-----    ___--          \    /)\
echo   ------_______      ---____            \__/  /
echo                -----__    \ --    _          /\
echo                       --__--__     \_____/   \_/\
echo                               ---^|   /          ^|
echo                                  ^| ^|___________^|
echo                                  ^| ^| ((_(_)^| )_)
echo                                  ^|  \_((_(_)^|/(_)
echo                                   \             (
echo                                    \_____________)
echo.
echo.

:runScript
set /p port=What is the PORT? 
echo.

rem token: Es la cantidad de columnas que va a separar el input de la consola 
rem delims: Es el criterio para el separador
FOR /F "tokens=5 delims= " %%P IN ('netstat -a -n -o ^| findstr :%port%') DO TaskKill.exe /PID %%P -F

echo.
echo                    SCRIPT RUN SUCCESSFULL
echo.
echo ##########################################################
echo ###########CREDITS BY GITHUB.COM/MAXISANDOVAL37###########
echo ##########################################################
echo.

goto quit

:quit
pause