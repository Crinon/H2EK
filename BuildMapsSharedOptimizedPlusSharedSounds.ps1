param (
	[Parameter(Mandatory=$true,
	HelpMessage="The name of the platform for which to build content.")]
	[ValidateSet("xbox1", "win64")]
	[string]$targetPlatform,

	[Parameter(Mandatory=$false,
	HelpMessage="Optional parameters.")]
	[string]$optional,

	[Parameter(Mandatory=$false,
	HelpMessage="False if you want to skip building standalone cache files that are used for ingesting additional tags for mod tools")]
	[string]$buildMapsRelatedToModTools=$true
)

# tool, tool_test_dx11, tool_symbols_dx11
$TOOL_EXE = Join-Path $PsScriptRoot "tool.exe"
# -batch: Hint to tool that it shouldn't waste time writing console-only progress printf's, which can really add up on processing time
$TOOL_SWITCHES = "-batch"
$BUILD_CACHE_FILE_FLAGS="compress|resource_sharing|multilingual_sounds"
$BUILD_CACHE_FILE_SP_FLAGS="compress|resource_sharing|multilingual_sounds|remastered_support"
$BUILD_CACHE_FILE_MP_FLAGS="compress|resource_sharing|multilingual_sounds|mp_tag_sharing"

[string[]] $CAMPAIGN_SCENARIOS = @(
	"scenarios\solo\00a_introduction\00a_introduction",
	"scenarios\solo\01a_tutorial\01a_tutorial",
	"scenarios\solo\01b_spacestation\01b_spacestation",
	"scenarios\solo\03a_oldmombasa\03a_oldmombasa",
	"scenarios\solo\03b_newmombasa\03b_newmombasa",
	"scenarios\solo\04a_gasgiant\04a_gasgiant",
	"scenarios\solo\04b_floodlab\04b_floodlab",
	"scenarios\solo\05a_deltaapproach\05a_deltaapproach",
	"scenarios\solo\05b_deltatowers\05b_deltatowers",
	"scenarios\solo\06a_sentinelwalls\06a_sentinelwalls",
	"scenarios\solo\06b_floodzone\06b_floodzone",
	"scenarios\solo\07a_highcharity\07a_highcharity",
	"scenarios\solo\07b_forerunnership\07b_forerunnership",
	"scenarios\solo\08a_deltacliffs\08a_deltacliffs",
	"scenarios\solo\08b_deltacontrol\08b_deltacontrol",
	"" # THIS ELEMENT INTENTIONALLY LEFT BLANK so all entries above can have a trailing ,
)
[string[]] $MULTIPLAYER_SCENARIOS = @(
	"scenarios\multi\zanzibar\zanzibar",
	"scenarios\multi\ascension\ascension",
	"scenarios\multi\backwash\backwash",
	"scenarios\multi\burial_mounds\burial_mounds",
	"scenarios\multi\colossus\colossus",
	"scenarios\multi\containment\containment",
	"scenarios\multi\cyclotron\cyclotron",
	"scenarios\multi\deltatap\deltatap",
	"scenarios\multi\dune\dune",
	"scenarios\multi\elongation\elongation",
	"scenarios\multi\halo\beavercreek\beavercreek",
	"scenarios\multi\halo\coagulation\coagulation",
	"scenarios\multi\halo\warlock\warlock",
	"scenarios\multi\headlong\headlong",
	"scenarios\multi\lockout\lockout",
	"scenarios\multi\marathon\foundation\foundation",
	"scenarios\multi\marathon\gemini\gemini",
	"scenarios\multi\midship\midship",
	"scenarios\multi\triplicate\triplicate",
	"scenarios\multi\turf\turf",
	"scenarios\multi\waterworks\waterworks",
	"scenarios\multi\needle\needle",
	"scenarios\multi\street_sweeper\street_sweeper",
	"scenarios\multi\halo\derelict\derelict",
	"scenarios\multi\halo\highplains\highplains",
	"" # THIS ELEMENT INTENTIONALLY LEFT BLANK so all entries above can have a trailing ,
)
# Currently unreleased maps
[string[]] $MULTIPLAYER_SCENARIOS_UNRELEASED = @(
	"scenarios\multi\anchor_point\anchor_point",
	"scenarios\multi\artery\artery",
	"scenarios\multi\backwoods\backwoods", # NOTE I originally had this commented out in the old scripts, but I forget why
	"scenarios\multi\convergence\convergence",
	"scenarios\multi\convergence_ms\convergence_ms",
	"scenarios\multi\convict\convict",
	"scenarios\multi\covenant_sample\covenant_sample", # NOTE I originally had this commented out in the old scripts, but I forget why
	"scenarios\multi\example\example",
	"scenarios\multi\example_pi\example_pi",
	"scenarios\multi\forerunner_sample\forerunner_sample",
	"scenarios\multi\grotto\grotto",
	"scenarios\multi\human_sample\human_sample",
	"scenarios\multi\rodentia\rodentia",
	"scenarios\multi\shaft\shaft",
	"scenarios\multi\soccer\soccer",

	"scenarios\multi\chironstation\chironstation",

	"" # THIS ELEMENT INTENTIONALLY LEFT BLANK so all entries above can have a trailing ,
)
# Digsite maps
[string[]] $DIGSITE_SCENARIOS = @(
	"digsite\scenarios\multi\03_ascension\03_ascension",
	"digsite\scenarios\multi\03_burial_mounds\03_burial_mounds",
	"digsite\scenarios\multi\03_colossus\03_colossus",
	"digsite\scenarios\multi\03_headlong\03_headlong",
	"digsite\scenarios\multi\03_lockout\03_lockout",
	"digsite\scenarios\multi\03_midship\03_midship",
	"digsite\scenarios\multi\03_waterworks\03_waterworks",

	"digsite\scenarios\solo\arcology\arcology",

	"" # THIS ELEMENT INTENTIONALLY LEFT BLANK so all entries above can have a trailing ,
)

$platformIsDurango = ($targetPlatform -ieq "xbox1")
$platformIsPC = ($targetPlatform -ieq "win64")

$CACHE_FILE_PLATFORM = $null
$mapsFolder = $null;
if ($platformIsPC)
{
	$CACHE_FILE_PLATFORM = "win64"
	$mapsFolder = Join-Path $PSScriptRoot "h2_maps_win64_dx11"
}
elseif ($platformIsDurango)
{
	$CACHE_FILE_PLATFORM = "xbox1"
	$mapsFolder = Join-Path $PSScriptRoot "h2_maps_xbox1"
}
else
{
	throw "Unknown or unhandled platform for maps folder: $targetPlatform"
}

#1 - Delete everything from maps folder to avoid stale data corrupting the process
if ($true)
{
	Write-Output "Delete everything from maps folder to avoid stale data corrupting the process"
	Remove-Item -Recurse -Force -Path $mapsFolder -ErrorAction SilentlyContinue
}

#2 - Generate mainmenu.map
if ($true)
{
	Write-Output "Generate mainmenu.map"
	Write-Output $TOOL_EXE $TOOL_SWITCHES "build-cache-file" "scenarios\ui\mainmenu\mainmenu" $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_FLAGS
	Measure-Command {
		&        $TOOL_EXE $TOOL_SWITCHES "build-cache-file" "scenarios\ui\mainmenu\mainmenu" $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_FLAGS
	}
}

#3 - Generate shared.map
if ($true)
{
	Write-Output "Generate shared.map"
	Write-Output $TOOL_EXE $TOOL_SWITCHES "build-cache-file" "scenarios\shared\shared" $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_FLAGS
	Measure-Command {
		&        $TOOL_EXE $TOOL_SWITCHES "build-cache-file" "scenarios\shared\shared" $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_FLAGS
	}
}

#4 - Generate single_player_shared.map
if ($true)
{
	Write-Output "Generate single_player_shared.map"
	Write-Output $TOOL_EXE $TOOL_SWITCHES "build-cache-file" "scenarios\shared\single_player_shared" $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_FLAGS
	Measure-Command {
		&        $TOOL_EXE $TOOL_SWITCHES "build-cache-file" "scenarios\shared\single_player_shared" $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_FLAGS
	}
}

#5 - Generate campaign cache files
if ($true)
{
	Write-Output "Generate campaign cache files"
	$CAMPAIGN_SCENARIOS | ForEach-Object {
		# Guard against empty lines in the map file list.
		if ($_)
		{
			$scenarioRelativePath = Join-Path $PSScriptRoot "tags\$_.scenario"
			if (Test-Path $scenarioRelativePath)
			{
				Write-Output $TOOL_EXE $TOOL_SWITCHES "build-cache-file" $_ $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_SP_FLAGS
				Measure-Command {
					&        $TOOL_EXE $TOOL_SWITCHES "build-cache-file" $_ $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_SP_FLAGS
				}
			}
			else
			{
				Write-Error "Missing $scenarioRelativePath"
			}
		}
	}
}

#6 - Generate multiplayer cache files
if ($true)
{
	Write-Output "Generate multiplayer cache files"
	$MULTIPLAYER_SCENARIOS | ForEach-Object {
		# Guard against empty lines in the map file list.
		if ($_)
		{
			$scenarioRelativePath = Join-Path $PSScriptRoot "tags\$_.scenario"
			if (Test-Path $scenarioRelativePath)
			{
				Write-Output $TOOL_EXE $TOOL_SWITCHES "build-cache-file" $_ $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_MP_FLAGS
				Measure-Command {
					&        $TOOL_EXE $TOOL_SWITCHES "build-cache-file" $_ $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_MP_FLAGS
				}
			}
			else
			{
				Write-Error "Missing $scenarioRelativePath"
			}
		}
	}
}

#7 - Build unreleased mp maps
if ($buildMapsRelatedToModTools -and $platformIsPC)
{
	Write-Output "Build unreleased mp maps"
	$MULTIPLAYER_SCENARIOS_UNRELEASED | ForEach-Object {
		# Guard against empty lines in the map file list.
		if ($_)
		{
			$scenarioRelativePath = Join-Path $PSScriptRoot "tags\$_.scenario"
			if (Test-Path $scenarioRelativePath)
			{
				Write-Output $TOOL_EXE $TOOL_SWITCHES "build-cache-file" $_ $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_MP_FLAGS
				Measure-Command {
					&        $TOOL_EXE $TOOL_SWITCHES "build-cache-file" $_ $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE_MP_FLAGS
				}
			}
			else
			{
				Write-Error "Missing $scenarioRelativePath"
			}
		}
	}
}

#8 - Build digsite maps
if ($buildMapsRelatedToModTools -and $platformIsPC)
{
	Write-Output "Build digsite maps"
	$DIGSITE_SCENARIOS | ForEach-Object {
		# Guard against empty lines in the map file list.
		if ($_)
		{
			$scenarioRelativePath = Join-Path $PSScriptRoot "tags\$_.scenario"
			if (Test-Path $scenarioRelativePath)
			{
				Write-Output $TOOL_EXE $TOOL_SWITCHES "build-cache-file" $_ $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE
				Measure-Command {
					&        $TOOL_EXE $TOOL_SWITCHES "build-cache-file" $_ $CACHE_FILE_PLATFORM $BUILD_CACHE_FILE
				}
			}
			else
			{
				Write-Error "Missing $scenarioRelativePath"
			}
		}
	}
}

exit 0
