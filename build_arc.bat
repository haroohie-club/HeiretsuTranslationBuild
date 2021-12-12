rmdir /s /q "intermediate"
mkdir "intermediate\files"
%HEIRETSU_CLI_PATH% --generate-patch -o "intermediate"