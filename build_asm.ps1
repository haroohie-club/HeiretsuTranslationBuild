Param(
  [string]$wiinject = "tools/Wiinject/Wiinject.exe"
)

& $wiinject -f "src" -i "801B3520" -e "801B5184" -p "patch/Riivolution/R44J8P.xml" -o "patch" -n "Heiretsu"