@echo off

"C:\Windows\Microsoft.NET\Framework64\v3.5\msbuild" ReoScript.sln /p:Configuration=Release

cd TestCase\bin\Release

echo Start run test cases...
echo.

Unvell.ReoScript.TestCase.exe
if %errorlevel% == 1 goto error
if %errorlevel% == 0 goto success

goto end

:error

echo.
echo !!!TEST CASE FAILED!!!
echo.

goto end

:success

echo.
echo All test cases ran successfully.
echo.

:end

pause

