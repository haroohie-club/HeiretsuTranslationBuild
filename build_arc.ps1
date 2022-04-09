Param(
    [string]$heiretsuCli = $env:HEIRETSU_CLI_PATH,
    [string]$assetsFolder,
    [int]$fontSize,
    [string]$langCode = "en"
)

& $heiretsuCli replace-font -m "./extracted/DATA/files/mcb0.bln" -g "./extracted/DATA/files/grp.bin" -f "$assetsFolder/font/font.ttf" -s $fontSize -b "!" -e "z" -o "./patch/Heiretsu/files"
& $heiretsuCli replace-files -m "./extracted/DATA/files/mcb0.bln" -d "./extracted/DATA/files/dat.bin" -e "./extracted/DATA/files/evt.bin" -g "./extracted/DATA/files/grp.bin" -s "./extracted/DATA/files/scr.bin" -r "$assetsFolder/$langCode" -o "./patch/Heiretsu/files"