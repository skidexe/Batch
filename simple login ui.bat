@echo off

set name=[your program name here]

:login

cls
title Login
color 4
echo.
echo Welcome to %name%!
echo.
echo Please log in!
echo.

set /p user="Username: "

if %user%==test (
    goto pass
)

cls
echo.
echo Welcome to %name%!
echo.
echo Invalid username!
echo.
echo Username:
ping localhost -n 2 >nul
goto login

:pass
set /p pass="Password: "

if %pass%==test (
    goto welcome
)

cls
echo.
echo Welcome to %name%!
echo.
echo Invalid password!
echo.
echo Username: %user%
echo Password:
ping localhost -n 2 >nul
goto login

:welcome
cls
title Welcome
echo Welcome back, %user%!
ping localhost -n 2 >nul
title Redirecting
echo redirecting..
ping localhost -n 2 >nul
goto home

:home
cls
title Home

echo [your ui here]
pause
