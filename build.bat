mkdir "intermediate\files"
copy intermediate\files\* patch\Heiretsu\files
%HEIRETSU_CLI_PATH% --generate-patch -o "intermediate"
%WIINJECT_PATH% -f "src" -i "801B3520" -e "801B5184" -p "intermediate\Heiretsu_base.xml" -o "patch" -n "Heiretsu"
rmdir /s /q "intermediate"