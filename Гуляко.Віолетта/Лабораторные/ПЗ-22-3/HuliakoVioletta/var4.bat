@echo off
set /p folder="������ ���� �� ��������: "
set /p year="������ �� (4 �����): "
set /p month="������ ����� (01-12): "
set /p day="������ ���� (01-31): "
set /p hour="������ ������ (00-23): "
set /p minute="������ ������� (00-59): "
set /p second="������ ������� (00-59): "

for %%i in ("%folder%\*.*") do (
    echo ���� ���� � ���� ��������� �����: %%i
    echo %year%/%month%/%day% %hour%:%minute%:%second% > "%~dpi\temp.txt"
    copy /b "%~dpi\temp.txt"+"%%~nxi" "%~dpi\temp"
    del "%%i"
    ren "%~dpi\temp" "%%~nxi"
)

del "%~dpi\temp.txt"
echo ������!