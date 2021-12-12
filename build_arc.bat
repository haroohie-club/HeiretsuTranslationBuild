mkdir "intermediate\files"
copy intermediate\files\* patch\Heiretsu\files
%HEIRETSU_CLI_PATH% --generate-patch -o "intermediate"
rmdir /s /q "intermediate"