@echo off
set Company=LV-Crew
set Product=Adblocker
cls 
echo Make.Packages.bat
echo.
echo Version: 2017.10.23a
echo.
echo.
echo Copy files together...
echo.
echo copy ..\HostsManager\bin\x86\Release\HostsManager.exe .\Packages\Win-x86.Archive\%Company%.%Product%.exe
copy ..\HostsManager\bin\x86\Release\HostsManager.exe .\Packages\Win-x86.Archive\%Company%.%Product%.exe
echo.
echo copy ..\HostsManager\bin\x86\Release\HostsManager.exe .\Packages\Win.Setup\%Company%.%Product%32.exe
copy ..\HostsManager\bin\x86\Release\HostsManager.exe .\Packages\Win.Setup\%Company%.%Product%32.exe
echo.
echo copy ..\HostsManager\bin\x64\Release\HostsManager.exe .\Packages\Win-x64.Archive\%Company%.%Product%.exe
copy ..\HostsManager\bin\x64\Release\HostsManager.exe .\Packages\Win-x64.Archive\%Company%.%Product%.exe
echo.
echo copy ..\HostsManager\bin\x64\Release\HostsManager.exe .\Packages\Win.Setup\%Company%.%Product%64.exe
copy ..\HostsManager\bin\x64\Release\HostsManager.exe .\Packages\Win.Setup\%Company%.%Product%64.exe
echo.
echo copy .\Branding\*.* .\Packages\Win-x64.Archive\
copy .\Branding\*.* .\Packages\Win-x64.Archive\
echo.
echo copy .\Branding\*.* .\Packages\Win-x86.Archive\
copy .\Branding\*.* .\Packages\Win-x86.Archive\
echo.
echo copy .\Branding\*.* .\Packages\Win.Setup\
copy .\Branding\*.* .\Packages\Win.Setup\
echo.
echo copy .\README.md .\Packages\Win-x64.Archive\
copy .\README.md .\Packages\Win-x64.Archive\
echo.
echo copy .\README.md .\Packages\Win-x86.Archive\
copy .\README.md .\Packages\Win-x86.Archive\
echo.
echo copy .\README.md .\Packages\Win.Setup\
copy .\README.md .\Packages\Win.Setup\
echo.
echo copy .\docs.VPS\readme.html .\Packages\Win-x64.Archive\Readme.html
copy .\docs\readme.html .\Packages\Win-x64.Archive\Readme.html
echo.
echo copy .\docs.VPS\readme.html .\Packages\Win-x86.Archive\Readme.html
copy .\docs\readme.html .\Packages\Win-x86.Archive\Readme.html
echo.
echo copy .\docs.VPS\readme.html .\Packages\Win.Setup\Readme.html
copy .\docs\readme.html .\Packages\Win.Setup\Readme.html
echo.
echo copy ..\HostsManager\License.rtf .\Packages\Win-x64.Archive\
copy ..\HostsManager\License.rtf .\Packages\Win-x64.Archive\
echo.
echo copy ..\HostsManager\License.rtf .\Packages\Win-x86.Archive\
copy ..\HostsManager\License.rtf .\Packages\Win-x86.Archive\
echo.
echo copy ..\HostsManager\License.rtf .\Packages\Win.Setup\
copy ..\HostsManager\License.rtf .\Packages\Win.Setup\
echo.
pause.
echo.
echo.
echo Make Packages...
echo.
echo Make Win-x64.zip...
echo.
del .\Packages\Win-x64.zip
rem echo.
"%PROGRAMFILES%\WinZip\WZZIP.exe" -p -r .\Packages\Win-x64.zip .\Packages\Win-x64.Archive\*.*
echo.
echo Make Win-x64.7z...
echo.
del .\Packages\Win-x64.7z
rem echo.
.\Make\7za a .\Packages\Win-x64.7z .\Packages\Win-x64.Archive\*.*
.\Make\7za a .\Packages\Win-x64.7z .\Packages\Win-x64.Archive\certutil
echo.
echo Make Win-x86.zip...
echo.
del .\Packages\Win-x86.zip
rem echo.
"%PROGRAMFILES%\WinZip\WZZIP.exe" -p -r .\Packages\Win-x86.zip .\Packages\Win-x86.Archive\*.*
echo.
echo Make Win-x86.7z...
echo.
del .\Packages\Win-x86.7z
rem echo.
.\Make\7za a .\Packages\Win-x86.7z .\Packages\Win-x86.Archive\*.*
.\Make\7za a .\Packages\Win-x86.7z .\Packages\Win-x86.Archive\certutil
echo.
pause
echo.
echo Make Win.NSIS.exe...
echo.
del .\Packages\Win.NSIS.exe
rem echo.
"%PROGRAMFILES(X86)%\NSIS\makensis.exe" .\Make\%Product%.Installer.NSIS.Win.nsi
echo.
echo Move EXE to .\Packages\...
move .\Make\Win.NSIS.exe .\Packages\
echo.
echo.
echo --------------- All done! ---------------
echo.
echo.
pause
echo.
