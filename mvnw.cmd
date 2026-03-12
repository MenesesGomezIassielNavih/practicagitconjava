@REM Maven Wrapper script for Windows
@REM This script downloads and runs Maven without requiring a global Maven installation

@echo off
setlocal

set MAVEN_PROJECTBASEDIR=%~dp0
set MAVEN_WRAPPER_JAR=%MAVEN_PROJECTBASEDIR%.mvn\wrapper\maven-wrapper.jar
set MAVEN_WRAPPER_PROPERTIES=%MAVEN_PROJECTBASEDIR%.mvn\wrapper\maven-wrapper.properties

@REM Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVACMD=java.exe
goto checkJava

:findJavaFromJavaHome
set JAVACMD=%JAVA_HOME%\bin\java.exe

:checkJava
"%JAVACMD%" -version >NUL 2>&1
if %ERRORLEVEL% neq 0 (
    echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
    echo Please set the JAVA_HOME variable in your environment to match the location of your Java installation.
    goto error
)

@REM Execute Maven
"%JAVACMD%" %MAVEN_OPTS% -jar "%MAVEN_WRAPPER_JAR%" %*
if ERRORLEVEL 1 goto error
goto end

:error
set ERROR_CODE=1

:end
endlocal & exit /b %ERROR_CODE%
