Param(
  [string]$heiretsuCli = "tools/HaruhiHeiretsuCLI/HaruhiHeiretsuCLI.exe"
)

Remove-Item -Force -Recurse "./intermediate"
mkdir -p "./intermediate/files"
# Run HaruhiHeiretsuCLI to patch the archives and output them to the intermediate directory
# In the meantime, copy files there directly after editing them with the editor
Copy-Item -Path "./intermediate/files" -Destination "./patch/Heirestu/files"
& $heiretsuCli --generate-patch -o "intermediate"