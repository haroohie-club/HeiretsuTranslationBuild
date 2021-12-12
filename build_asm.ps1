Param(
  [string]$wiinject = "tools/Wiinject/Wiinject.exe",
  [string]$basePatch = "intermediate/Heiretsu_base.xml"
)

& $wiinject -f "src" -i "801B3520" -e "801B5184" -p "$basePatch" -o "patch" -n "Heiretsu"