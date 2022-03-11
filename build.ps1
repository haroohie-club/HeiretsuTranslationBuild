Param(
  [string]$heiretsuCli = $env:HEIRETSU_CLI_PATH,
  [string]$wiinject = $env:WIINJECT_PATH,
  [string]$devkitPro = "$env:DEVKITPRO_PATH",
  [switch]$patchDol
)

mkdir -p "./intermediate"
& $heiretsuCli generate-patch -o "intermediate"
& $wiinject -f "src" -i "8018A480" -e "8018D5A0" -p "./intermediate/Heiretsu_base.xml" -d "$devkitPro" -o "patch" -n "Heiretsu"
Remove-Item -Force -Recurse "./intermediate"