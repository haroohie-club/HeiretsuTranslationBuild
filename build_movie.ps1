Param(
    [string]$ffmpeg = "ffmpeg",
    [string]$avthp = "avthp",
    [string]$assetsDir,
    [string]$fontsDir,
    [string]$langCode
)

Get-ChildItem -Path "$assetsDir/movie/$langCode/" -Filter "*.ass" | ForEach-Object {
    $filename = [System.IO.Path]::GetFileNameWithoutExtension($_)
    Copy-Item -Path $_.FullName -Destination "./"
    $subs = "$filename.ass"
    $video = "./extracted/DATA/files/$filename.thp"

    & $ffmpeg -i $video -qscale:v 1 -vf "subtitles=$($subs):fontsdir=$($fontsDir)" "$filename.mp4"
    & $avthp -q 100 "$filename.mp4" "./patch/Heiretsu/files/$filename.thp"

    Remove-Item "$filename.mp4"
    Remove-Item "$filename.ass"
}