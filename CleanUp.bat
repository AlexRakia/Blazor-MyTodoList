@echo off
echo ╔════════════════════════════════════════════════╗
echo ║   Blazor Project Cleanup                       ║
echo ╚════════════════════════════════════════════════╝
echo.

set ROOT=%~dp0

echo Cleaning bin and obj folders...
for /d /r "%ROOT%" %%d in (bin obj) do (
    if exist "%%d" (
        echo   Removing: %%d
        rd /s /q "%%d"
    )
)

echo.
echo Cleaning .vs and IDE folders...
for /d /r "%ROOT%" %%d in (.vs .idea) do (
    if exist "%%d" (
        echo   Removing: %%d
        rd /s /q "%%d"
    )
)

echo.
echo ✓ Cleanup complete!
pause