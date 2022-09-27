# This scripts starts ytdl and only downloads the best audio quality to a given url.
#.\youtube-dl.exe -o 'F:\Downloads\%(title)s.%(ext)s' -f 'bestaudio' $URL
Write-Host "========================================"
Write-Host "|       Willkommen bei  Hyrikans       |"
Write-Host "|       Youtube-Download-Skript        |"
Write-Host "========================================"
Write-Host ""
do{
    [string]$type = Read-Host "Möchtest du nur Musik (m) herunterladen oder ganze videos (v) in 1080p? m/v?"
    if ($type -eq "m"){
        do{
            [string]$URL = Read-Host "Bitte gib die Video URL ein, dessen Audio heruntergeladen werden soll, und bestätige mit Enter"
            .\yt-dlp.exe -o '\Musik\%(title)s.%(ext)s' -f 'bestaudio' --no-playlist -x --audio-format 'mp3' $URL
        }while ("true")
    }
    elseif ($type -eq "v"){
        do
        {
            [string]$URL = Read-Host "Bitte gib die Video URL ein und bestätige mit Enter"
            .\yt-dlp.exe -o '\Videos\%(title)s.%(ext)s' -f 'bestvideo[height<=1080][vcodec!=vp9]+bestaudio/best[height<=1080][vcodec!=vp9]' --no-playlist $URL
        }while (1 -eq 1)
    }
    else{
        Write-Host "Falsche eingabe!"
    }
}while ("true")