@echo off
:menu
cls

echo Bienvenido usuari@!
echo A continuacion el Menu de opciones:

echo 1) Sumas y Restas
echo 2) Crear archivo nuevo
echo 3) Abrir pagina web
echo 4) Salir
echo . 

set /p opcion= Selecciona una opcion:
if "%opcion%"=="1" goto sum_res
if "%opcion%"=="2" goto crear_archivo
if "%opcion%"=="3" goto abrir_pagina
if "%opcion%"=="4" goto salir

goto menu
:sum_res
cls

echo Seleccione una operacion:
echo 1) Suma
echo 2) Resta
set /p operacion=Ingresa la opcion:
set /p num1=Ingresa el primer numero: 
set /p num2=Ingresa el segundo numero: 
if "%operacion%"=="1" (
    set /a resultado=%num1%+%num2%
) else (
    set /a resultado=%num1%-%num2%
)
echo El resultado es: %resultado%
pause

goto menu
:crear_archivo
cls

set /p mensaje=Ingrese el texto a guardar: 
set /p historial=¿Desea mantener un historial de mensajes? (Si/No):
if /i "%historial%"=="Si" (
    echo %mensaje% >> historial.txt
) else (
    echo %mensaje% > mensaje.txt
)
echo Archivo creado con exito.
pause

goto menu
:abrir_pagina
cls

set /p url=Escribe la URL de la pagina, ej. https://cesun.edu.mx/: 
start %url%
pause

goto menu
:salir
echo Fin del programa...
exit