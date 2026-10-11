@echo off
REM Inicia el servidor de desarrollo para SafeRideUC y abre el navegador.
REM Busca php.exe en la carpeta del proyecto (php\php.exe) o en el PATH.
setlocal
set PROJECT_DIR=%~dp0
if exist "%PROJECT_DIR%php\php.exe" (
    set PHP_EXE=%PROJECT_DIR%php\php.exe
) else (
    for /f "usebackq tokens=*" %%p in (`where php 2^>nul`) do set PHP_EXE=%%p
)
if not defined PHP_EXE (
    echo PHP no encontrado. Instale PHP o coloque php.exe en "%PROJECT_DIR%php\php.exe" o agregue PHP al PATH.
    pause
    exit /b 1
)

pushd "%PROJECT_DIR%public"
REM Inicia el servidor embebido de PHP en el puerto 8000
start "SafeRideUC PHP" "%PHP_EXE%" -S localhost:8000
REM Abre el navegador por defecto apuntando a la app
start "" "http://localhost:8000"
popd
endlocal
necho Servidor iniciado en http://localhost:8000
pause
