@echo off
echo.
set/p numero1= Dime un numero
cls
echo.
set/p numero2= Dime otro para sumar el anterior
cls
set/a suma= %numero1% + %numero2%
echo.
echo %numero1% + %numero2% = %suma%
echo.
echo Pulsa una tecla para salir.
pause>nul
exit