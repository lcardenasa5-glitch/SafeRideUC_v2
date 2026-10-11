@echo off
REM Abre la versión estática (HTML) de SafeRideUC en el navegador por defecto.
setlocal
set PROJECT_DIR=%~dp0
set INDEX_PATH=%PROJECT_DIR%static_site\index.html
if exist "%INDEX_PATH%" (
    start "" "%INDEX_PATH%"
    echo Abriendo %INDEX_PATH%
) else (
    echo Archivo %INDEX_PATH% no encontrado.
)
endlocal
pause
