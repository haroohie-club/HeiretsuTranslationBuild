Param(
  [string]$heiretsuCli = "tools/HaruhiHeiretsuCLI/HaruhiHeiretsuCLI.exe",
  [string]$wiinject = "tools/Wiinject/Wiinject.exe",
  [string]$langCode = "en",
  [switch]$patchDol
)

mkdir -p "./patch/Heiretsu/files"
mkdir -p "./intermediate"
& $heiretsuCli --replace-graphics -m "./extracted/DATA/files/mcb0.bln" -b "./extracted/DATA/files/grp.bin" -r "./archives/grp/$langCode/" -o "./patch/Heiretsu/files"
& $heiretsuCli --generate-patch -o "intermediate"
& $wiinject -f "src" -i "801B3520" -e "801B5184" -p "./intermediate/Heiretsu_base.xml" -o "patch" -n "Heiretsu"
Remove-Item -Force -Recurse "./intermediate"