Param(
    [string]$heiretsuCli = $env:HEIRETSU_CLI_PATH,
    [string]$assetsFolder,
    [int]$fontSize,
    [string]$langCode = "en"
)

& $heiretsuCli replace-font -m "./extracted/DATA/files/mcb0.bln" -g "./extracted/DATA/files/grp.bin" -f "$assetsFolder/font/font.ttf" -s $fontSize -b "!" -e "z" -o "./patch/Heiretsu/files"
& $heiretsuCli replace-graphics -m "./patch/Heiretsu/files/mcb0.bln" -g "./patch/Heiretsu/files/grp.bin" -r "$assetsFolder/graphics/$langCode/" -o "./patch/Heiretsu/files"