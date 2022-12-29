@echo off
set PIO_DIR=C:\Users\%USERNAME%\.platformio
set PIO_CMD=%PIO_DIR%\penv\Scripts\pio

%PIO_CMD% %*
