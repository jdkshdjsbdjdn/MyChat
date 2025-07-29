@echo off
title MyChat ZIP Dosyasi Indirici ve Ayiklayici

set "URL=https://raw.githubusercontent.com/jdkshdjsbdjdn/MyChat/main/MyChat.zip"
set "TARGET=MyChat.zip"
set "EXTRACT_FOLDER=MyChat"

echo Dosya indiriliyor...
curl -L -o "%TARGET%" "%URL%"

if %ERRORLEVEL% NEQ 0 (
    echo Indirme basarisiz.
    pause
    exit /b
)

echo Indirme tamamlandi: %TARGET%
echo ZIP dosyasi ayiklanacak...

:: Powershell kullanarak ZIP dosyasini ayikla
powershell -Command "Expand-Archive -Path '%TARGET%' -DestinationPath '%EXTRACT_FOLDER%' -Force"

if %ERRORLEVEL% NEQ 0 (
    echo ZIP dosyasi ayiklama basarisiz.
    pause
    exit /b
)

echo Ayiklama tamamlandi: %EXTRACT_FOLDER%
pause
