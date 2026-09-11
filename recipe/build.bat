setlocal EnableDelayedExpansion

FOR /F %%P IN (patches\series) DO (
    patch -p1 -i patches\%%P
    IF !errorlevel! neq 0 EXIT /b !errorlevel!
)

nmake /F win32/Makefile
IF !errorlevel! neq 0 EXIT /b !errorlevel!
