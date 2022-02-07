@echo off
:: cool

:down
if %h%==1.18 goto 1.18
if %h%==P1.18 goto P1.18
goto er

:1.18

goto end
:P1.18

goto end

:er
pause
echo That isnt a valid version!
echo Enter valid version:
echo.
set /p h=$ 
goto down

:end
echo Placeholder