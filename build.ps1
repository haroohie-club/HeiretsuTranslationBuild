Param(
  [string]$heiretsuCli = "tools/HaruhiHeiretsuCLI/HaruhiHeiretsuCLI.exe",
  [string]$wiinject = "tools/Wiinject/Wiinject.exe",
  [string]$devkitPro = "C:/devkitPro",
  [string]$langCode = "en",
  [switch]$patchDol
)

mkdir -p "./intermediate"
& $heiretsuCli --replace-graphics -m "./extracted/DATA/files/mcb0.bln" -b "./extracted/DATA/files/grp.bin" -r "./archives/grp/$langCode/" -o "./patch/Heiretsu/files"
& $heiretsuCli --generate-patch -o "intermediate"
& $wiinject -f "src" -i "801B3520,801B367C" -e "801B5170,801B3DD8" -p "./intermediate/Heiretsu_base.xml" -d "$devkitPro" -o "patch" -n "Heiretsu"
Remove-Item -Force -Recurse "./intermediate"