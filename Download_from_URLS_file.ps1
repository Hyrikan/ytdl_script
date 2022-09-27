# This scripts starts ytdl and only downloads the best audio quality to a given url.
#.\youtube-dl.exe -o 'F:\Downloads\%(title)s.%(ext)s' -f 'bestaudio' $URL
Write-Host "========================================"
Write-Host "|       Willkommen bei  Hyrikans       |"
Write-Host "|    multiple path download skript     |"
Write-Host "========================================"
Write-Host ""
do{
    [string]$type = Read-Host "Hast du schon die URLs in die urls.txt geschrieben? y/n?"
    if ($type -eq "n"){
        
        [string]$URL = Read-Host "Fülle die urls.txt mit .m3u8 urls und bestätige mit Enter, sobald du fertig bist."
    }
    .\yt-dlp.exe -o '\Videos\%(title)s%(autonumber)s.%(ext)s' -a urls.txt
        
    
}while ("true")