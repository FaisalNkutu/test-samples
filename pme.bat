@echo off
set RAD_HOME="C:\Program Files\IBM\SDP"
set RAD_EXE="%RAD_HOME%\eclipse.exe"
set CONFIG_DIR="%RAD_HOME%\configuration"
set BUNDLES_FILE=%CONFIG_DIR%\org.eclipse.equinox.simpleconfigurator\bundles.info
set BACKUP_FILE=%BUNDLES_FILE%.bak

echo.
echo === Backing up bundles.info ===
if exist %BUNDLES_FILE% (
    copy /Y %BUNDLES_FILE% %BACKUP_FILE%
    echo Backup created: %BACKUP_FILE%
) else (
    echo bundles.info not found at expected path: %BUNDLES_FILE%
    echo Please check and update script if necessary.
    pause
    exit /b 1
)

echo.
echo === Deleting Eclipse caches ===
rmdir /S /Q %CONFIG_DIR%\org.eclipse.osgi
rmdir /S /Q %CONFIG_DIR%\org.eclipse.equinox.simpleconfigurator\.backup

echo.
echo === Launching Rational Application Developer with -clean ===
start "" %RAD_EXE% -clean

echo.
echo Done. RAD should now reinitialize plugins including PME WSE.
pause
