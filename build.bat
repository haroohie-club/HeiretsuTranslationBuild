mkdir "intermediate\files"
copy intermediate\files\* patch\Heiretsu\files
%HEIRETSU_CLI_PATH% --generate-patch -o "intermediate"
%WIINJECT_PATH% -f "src" -i "801B3520,801B367C" -e "801B5170,801B3DD8" -p "intermediate\Heiretsu_base.xml" -d %DEVKITPRO_PATH% -o "patch" -n "Heiretsu"
rmdir /s /q "intermediate"