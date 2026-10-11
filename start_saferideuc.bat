@echo off
echo ==========================================
echo    SafeRideUC - Iniciando servidor...
echo ==========================================
echo.
echo La base de datos SQLite se crea automaticamente.
echo No necesitas instalar SQL Server ni nada extra.
echo.
echo Abriendo en: http://localhost:8000
echo.
echo Usuario de prueba:
echo   Correo:    jpulido4@ucentral.edu.co
echo   Password:  Test1234!
echo.
echo Presiona Ctrl+C para detener el servidor.
echo ==========================================
start http://localhost:8000
php -S localhost:8000
