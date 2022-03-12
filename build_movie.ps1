Param(
    [string]$ffmpeg = "ffmpeg",
    [string]$thpConv = $env:THPCONV,
    [string]$assetsDir,
    [string]$fontsDir,
    [string]$langCode
)

Get-ChildItem -Path "$assetsDir/movie/$langCode/" -Filter "*.ass" | ForEach-Object {
    $filename = [System.IO.Path]::GetFileNameWithoutExtension($_)
    Copy-Item -Path $_.FullName -Destination "./"
    $subs = "$filename.ass"
    $video = "./extracted/DATA/files/$filename.thp"

    mkdir "frames"
    & $ffmpeg -i $video temp.wav
    & $ffmpeg -i $video -qscale:v 1 -an -vf "subtitles=$($subs):fontsdir=$($fontsDir)" "frames/%05d.jpg"
    & $thpConv -j "frames/*.jpg" -s temp.wav -d "./patch/Heiretsu/files/$filename.thp"

    Remove-Item "temp.wav"
    Remove-Item "sega.ass"
    Remove-Item -Recurse -Force "frames/"
}