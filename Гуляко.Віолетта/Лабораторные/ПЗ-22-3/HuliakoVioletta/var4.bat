@echo off
set /p folder="¬вед≥ть шл€х до каталогу: "
set /p year="¬вед≥ть р≥к (4 цифри): "
set /p month="¬вед≥ть м≥с€ць (01-12): "
set /p day="¬вед≥ть день (01-31): "
set /p hour="¬вед≥ть годину (00-23): "
set /p minute="¬вед≥ть хвилину (00-59): "
set /p second="¬вед≥ть секунду (00-59): "

for %%i in ("%folder%\*.*") do (
    echo «м≥на дати ≥ часу створенн€ файлу: %%i
    echo %year%/%month%/%day% %hour%:%minute%:%second% > "%~dpi\temp.txt"
    copy /b "%~dpi\temp.txt"+"%%~nxi" "%~dpi\temp"
    del "%%i"
    ren "%~dpi\temp" "%%~nxi"
)

del "%~dpi\temp.txt"
echo √отово!