@echo off
setlocal
for %%a in ("/HELP" "/help" "-HELP" "-help") do if %%a == "%1" goto HELPTEXT
goto STARTCOMMAND

:HELPTEXT
echo.
echo (c) Copyright Oracle.  All rights reserved.
echo. 
echo PRODUCT
echo    Oracle Data Integrator
echo.  
echo FILENAME
echo    restartsession.bat
echo.  
echo DESCRIPTION
echo    Resumes an execution session. See OracleDI documentation for the detailed
echo    syntax.
echo.    
echo SYNTAX
echo     restartsession ^<session_number^> ["-V=<trace_level>"]
echo.  
echo PREREQUISITES
echo   The REPOSITORY CONNECTION INFORMATION section of odiparams.bat should be
echo   completed before running this script.
echo. 
goto ENDCOMMAND

:STARTCOMMAND
if "%ODI_HOME%" == "" set ODI_HOME=..
call "%ODI_HOME%\bin\odiparams.bat"

echo OracleDI: Resuming session %1 ...

%ODI_JAVA_START% oracle.odi.Agent %ODI_REPOSITORY_PARAMS% ODI_START_SESS %*

:ENDCOMMAND