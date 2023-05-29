@echo off
if "%~1"=="" goto :usage
if "%~1"=="-h" goto :usage
set result=0
for %%d in (%*) do (
    if not exist "%%~d" (
        echo Folder "%%~d" does not exist.
        exit /b 1
    )
pushd "%%~d"
for %%f in (*) do (
        if exist "%%f" (
            if "%%~af" NEQ "-ra--------" (
                echo File: %%~nf, Size: %%~zf bytes, Atr: %%~af
                set /a result+=%%~zf
            )
        )
    )
    popd
)
echo Summ of sizes is %result% bytes
exit /b 0
:usage
echo You need to write: "2st part.bat" 1st or 2st 
exit /b 1