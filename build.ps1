Param(
  [string]$heiretsuCli = $env:HEIRETSU_CLI_PATH,
  [string]$wiinject = $env:WIINJECT_PATH,
  [string]$devkitPro = "$env:DEVKITPRO_PATH",
  [switch]$patchDol
)

if (-not (Test-Path -Path ./patch/Riivolution)) {
  New-Item -Path ./patch/Riivolution -ItemType Directory
}
New-Item -Path "./intermediate" -ItemType Directory
& $heiretsuCli generate-patch -o "intermediate"
& $wiinject -f "src" -m "./R44J8P.map" -i "8018A480" -e "8018D5A0" -p "./intermediate/Heiretsu_base.xml" -d "$devkitPro" -o "patch" -n "Heiretsu"
Remove-Item -Force -Recurse "./intermediate"