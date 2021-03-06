
setx _MSCRIPT "%userprofile%\.cfg\scripts"
rem %AppData%\Microsoft\Windows\Start Menu\Programs\Startup


REM ************* Set default text editor across Windows ***********
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command" /f /t REG_EXPAND_SZ /d "\"C:\Program Files\Notepad++\notepad++.exe\" \"%%1\""

REM ************* Open Unknown Files in Notepad++ ***********
REM ************* Denne bør testes før bruk ***********
REG ADD "HKEY_CLASSES_ROOT\Unknown\shell\openas\command" /f /t REG_EXPAND_SZ /d "\"C:\Program Files\Notepad++\notepad++.exe\" \"%%1\""

REM ************* Open Extension less files in Notepad++ ***********
REG ADD "HKEY_CLASSES_ROOT\." /f /t REG_SZ /d txtfile

ftype ".out"="C:\Program Files\Sublime Text 3\sublime_text.exe" %%1
ftype ".tnt"="C:\Program Files\Sublime Text 3\sublime_text.exe" %%1