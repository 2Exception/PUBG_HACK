@echo off
echo ==================================================================================================
echo  if err with encode problem,pls make a file and copy code from github page and save as bat file
echo  the first @  maybe err encode 
echo ==================================================================================================
echo  author wang zhen  a.hleb.king wangzhenjjcn@gmail.com 
echo  since       018-1-27 23:23:23 AM (UTC+8)
echo  lastupdated 018-3-27 16:23:23 AM (UTC+8)
echo ==================================================================================================
echo ---------------------------------------refuse pirated games---------------------------------------
echo --------------------------------pay attention to self-protection----------------------------------
echo ---------------------------------------- beware fooled--------------------------------------------
echo --------------------------------moderate games benefit the brain ---------------------------------
echo -----------------------------------do not addicted to the game -----------------------------------
echo ------------------------reasonable to arrange a time to enjoy a healthy life----------------------
echo ==================================================================================================
echo ==================================================================================================
echo ====!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!WARNING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!===============
echo ====!!!!!!!!!!!!!!!!!!MAKE SURE YOUR DRIVER C HAVE 27GB FREE SPACES!!!!!!!!!!!!!!!!===============
echo ====!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!RISK  ON YOUR OWN!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!===============
echo ====!!!!!!!!!!!!!!!!!!You Can Edit This File Make Sure PUBG_PATH  right!!!!!!!!!!!!===============
echo ==================================================================================================
set pubg_path=C:\Progra~2\Steam\steamapps\common\PUBG\TslGame\
set pak_path=%pubg_path%Content\Paks\
set moddedpak_path=c:\Moddedfiles
set modpak_path=%pubg_path%Content\Paks\TslGame-WindowsNoEditor_ui.pak\
set modpaks_path=%pubg_path%Content\Paks\TslGame-WindowsNoEditor_ui.pak\TslGame-WindowsNoEditor_ui1.pak\
echo ==================================================================================================
set filepath=%~dp0
set PUBG_INSIDE_PATH=%~dp0\TslGame\
cd %pak_path%
xcopy %pak_path% "c:\Moddedfiles" /I
cd %~dp0PAKS\20180404PAKS
for /f "delims=" %%i in ('dir /aa/s/b/on *.pak') do (
if  not exist  %paks_path%%%~nxi  echo ~~~~~~~Processing!~PLS WAIT~~~~~~~
if  not exist  %paks_path%%%~nxi  xcopy "%%~fi" "%moddedpak_path%" 
if    exist  %paks_path%%%~nxi  echo    %%~nxi   DONE
)
cd %pak_path%Content\
rename Paks Paks1
mklink /j "%pak_path%Content\Paks" "c:\Moddedfiles"
cd %~dp0
start PUBGSTATER.cmd
timeout /t 60 /nobreak
cd %pubg_path%Content
rmdir Paks
cd %pubg_path%Content\
rename Paks1 Paks
pause
exit


