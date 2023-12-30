@ECHO off
PUSHD %~dp0

CD ..\..\

SET START_TIME=%TIME%

SET TOOL_EXE=tool
REM -batch: Hint to tool that it shouldn't waste time writing console-only progress printf's, which can really add up on processing time
SET TOOL_SWITCHES=-batch
SET CACHE_FILE_PLATFORM=win64
SET BUILD_CACHE_FILE_FLAGS="compress|resource_sharing|multilingual_sounds"
SET BUILD_CACHE_FILE_SP_FLAGS="compress|resource_sharing|multilingual_sounds|remastered_support"
SET BUILD_CACHE_FILE_MP_FLAGS="compress|resource_sharing|multilingual_sounds|mp_tag_sharing"
SET LOCAL_ERRORLEVEL=0

REM Ensure the maps folder is empty, to avoid old shared databases
mkdir h2_maps_win64_dx11
del h2_maps_win64_dx11 /Q

%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\ui\mainmenu\mainmenu %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\shared\shared %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\shared\single_player_shared %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR

%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\00a_introduction\00a_introduction %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\01a_tutorial\01a_tutorial %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\01b_spacestation\01b_spacestation %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\03a_oldmombasa\03a_oldmombasa %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\03b_newmombasa\03b_newmombasa %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\04a_gasgiant\04a_gasgiant %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\04b_floodlab\04b_floodlab %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\05a_deltaapproach\05a_deltaapproach %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\05b_deltatowers\05b_deltatowers %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\06a_sentinelwalls\06a_sentinelwalls %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\06b_floodzone\06b_floodzone %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\07a_highcharity\07a_highcharity %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\07b_forerunnership\07b_forerunnership %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\08a_deltacliffs\08a_deltacliffs %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\solo\08b_deltacontrol\08b_deltacontrol %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_SP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR

%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\zanzibar\zanzibar %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\ascension\ascension %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\backwash\backwash %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\burial_mounds\burial_mounds %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\colossus\colossus %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\containment\containment %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\cyclotron\cyclotron %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\deltatap\deltatap %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\dune\dune %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\elongation\elongation %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\halo\beavercreek\beavercreek %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\halo\coagulation\coagulation %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\halo\warlock\warlock %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\headlong\headlong %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\lockout\lockout %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\marathon\foundation\foundation %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\marathon\gemini\gemini %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\midship\midship %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\triplicate\triplicate %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\turf\turf %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\waterworks\waterworks %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\needle\needle %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\street_sweeper\street_sweeper %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\halo\derelict\derelict %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR
%TOOL_EXE% %TOOL_SWITCHES% build-cache-file scenarios\multi\halo\highplains\highplains %CACHE_FILE_PLATFORM% %BUILD_CACHE_FILE_MP_FLAGS%
IF NOT '%ERRORLEVEL%'=='0' GOTO ERROR

ECHO Finished building all cache files
GOTO THE_END

:ERROR
SET LOCAL_ERRORLEVEL=1
ECHO "!ERROR_BUILD_CACHE_FILE_ERROR!"
ECHO Failed building a cache file, haulting entire batch process
GOTO THE_END

:THE_END

POPD

SET END_TIME=%TIME%
ECHO Start Time : %START_TIME%
ECHO Finish Time: %END_TIME%

REM PAUSE
REM EXIT

IF %LOCAL_ERRORLEVEL% == 1 (
    ECHO Maps Build Failed!
    EXIT /B 1
) ELSE (
    echo Succeeded!
    EXIT /B 0
)