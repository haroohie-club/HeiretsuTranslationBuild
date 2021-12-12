Param(
  [string]$heiretsuCli = "tools/HaruhiHeiretsuCLI/HaruhiHeiretsuCLI.exe"
)

mkdir -p "./intermediate/files"
# Run HaruhiHeiretsuCLI to patch the archives and output them to the intermediate directory
Copy-Item -Path "./intermediate/files" -Destination "./patch/Heirestu/files"
& $heiretsuCli --generate-patch -o "intermediate"
Remove-Item -Force -Recurse "./intermediate"