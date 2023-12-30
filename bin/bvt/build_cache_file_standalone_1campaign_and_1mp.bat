@ECHO off
PUSHD %~dp0

CD ..\..\

SET LOCAL_ERRORLEVEL=0
SET TOOL_EXE=tool
SET TOOL_SWITCHES=-batch
SET BUILD_CACHE_FILE_FLAGS=
SET BUILD_CACHE_FILE_SP_FLAGS=remastered_support
SET BUILD_CACHE_FILE_MP_FLAGS=
SET CACHE_FILE_PLATFORM=win64_dx11

ECHO(
ECHO(
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\zanzibar\zanzibar %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR

ECHO(
ECHO(
ECHO Finished building zanzibar

ECHO(
ECHO(
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\03a_oldmombasa\03a_oldmombasa %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR

ECHO(
ECHO(
ECHO Finished building 03a_oldmombasa


GOTO THE_END

:ERROR
ECHO "!ERROR! %ERRORLEVEL%"
ECHO Failed building levels, haulting entire batch process.
SET LOCAL_ERRORLEVEL=1
GOTO THE_END

:THE_END

POPD

IF %LOCAL_ERRORLEVEL% == 1 (
    ECHO Failed!
    EXIT /B 1
) ELSE (
    ECHO Succeeded!
    EXIT /B 0
)