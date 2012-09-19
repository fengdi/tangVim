@echo off
echo Windows Registry Editor Version 5.00> tmp.reg
echo [HKEY_CLASSES_ROOT\*\shell]>> tmp.reg
echo [HKEY_CLASSES_ROOT\*\shell\gVim]>> tmp.reg
echo @="Open with gVim">> tmp.reg
echo [HKEY_CLASSES_ROOT\*\shell\gVim\Command]>> tmp.reg
set str=%cd%
echo @="\"%str:\=\\%\\gVimPortable.exe\" -p --remote-tab-silent \"%%1\"">> tmp.reg
echo [HKEY_CLASSES_ROOT\Directory\shell\gVim]>> tmp.reg
echo @="Open with gVim">> tmp.reg
echo [HKEY_CLASSES_ROOT\Directory\shell\gVim\Command]>> tmp.reg
echo @="\"%str:\=\\%\\gVimPortable.exe\" -p \"%%1\"">> tmp.reg

tmp.reg
del tmp.reg
