@echo off
chcp 1251

mkdir "Лабораторные"
cd "Лабораторные"
mkdir "ПЗ-22-3"
cd "ПЗ-22-3"
mkdir "HuliakoVioletta"
cd "HuliakoVioletta"
mkdir "batch"
cd "batch"
mkdir "Скрытая папка"
mkdir "Не скрытая папка"
attrib +h "Скрытая папка"

echo.>"%~dp0\Лабораторные\ПЗ-22-3\HuliakoVioletta\batch\Не скрытая папка\copyhelp.txt"
echo This is a test > "%~dp0\Лабораторные\ПЗ-22-3\HuliakoVioletta\batch\Не скрытая папка\copyhelp.txt"
xcopy "%~dp0\Лабораторные\ПЗ-22-3\HuliakoVioletta\batch\Не скрытая папка\copyhelp.txt" "%~dp0\Лабораторные\ПЗ-22-3\HuliakoVioletta\batch\Скрытая папка\copied_copyhelp.txt"
