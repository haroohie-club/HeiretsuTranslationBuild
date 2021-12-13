Param(
  [string]$heiretsuCli = "tools/HaruhiHeiretsuCLI/HaruhiHeiretsuCLI.exe",
  [string]$wiinject = "tools/Wiinject/Wiinject.exe",
  [switch]$patchDol
)

mkdir -p "./intermediate/files"
# Run HaruhiHeiretsuCLI to patch the archives and output them to the intermediate directory
# In the meantime, copy files there directly after editing them with the editor
Copy-Item -Path "./intermediate/files" -Destination "./patch/Heiretsu/" -Force
& $heiretsuCli --generate-patch -o "intermediate"
& $wiinject -f "src" -i "801B3520" -e "801B5184" -p "./intermediate/Heiretsu_base.xml" -o "patch" -n "Heiretsu"
Remove-Item -Force -Recurse "./intermediate"