setlocal EnableDelayedExpansion

FOR /F %%P IN (patches\series) DO (
    patch -p1 -i patches\%%P
    IF !errorlevel! neq 0 EXIT /b !errorlevel!
)

CD win32
IF !errorlevel! neq 0 EXIT /b !errorlevel!
nmake
IF !errorlevel! neq 0 EXIT /b !errorlevel!
