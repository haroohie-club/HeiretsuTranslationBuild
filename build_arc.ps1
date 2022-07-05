Param(
    [string]$heiretsuCli = $env:HEIRETSU_CLI_PATH,
    [string]$assetsFolder,
    [int]$fontSize,
    [string]$langCode = "en",
    [string]$copyTo
)

if (-not (Test-Path -Path ./patch/Heiretsu/files)) {
    New-Item -Path ./patch/Heiretsu/files -ItemType Directory
}
& $heiretsuCli generate-font-replacement -f "$assetsFolder/font/font.ttf" -s $fontSize -j "./font_replacement_map.json" -c "./src/HeiretsuTranslation/font_hack.c" -e "€‚ƒ`„…†‡ˆ‰Š‹ŒŽ‘’`“`”•–—˜™š›œžŸ¡¢£¤¥¦§¨©ª«¬®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÉËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ"
& $heiretsuCli replace-font -m "./extracted/DATA/files/mcb0.bln" -g "./extracted/DATA/files/grp.bin" -f "$assetsFolder/font/font.ttf" -s $fontSize -r "./font_replacement_map.json" -o "./patch/Heiretsu/files"
& $heiretsuCli replace-files -m "./patch/Heiretsu/files/mcb0.bln" -d "./extracted/DATA/files/dat.bin" -e "./extracted/DATA/files/evt.bin" -g "./patch/Heiretsu/files/grp.bin" -s "./extracted/DATA/files/scr.bin" -r "$assetsFolder/$langCode" -o "./patch/Heiretsu/files"
if ($copyTo) {
    Write-Host "Copying output to '$copyTo'..."
    Copy-Item -Path "./patch/Heiretsu" -Destination $copyTo -Recurse -Force
}