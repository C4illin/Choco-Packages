import-module au

$releases = 'https://github.com/mpvnet-player/mpv.net/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"   = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum = Get-RemoteChecksum $Latest.Url
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url   = $download_page.links | ? href -match '.exe$' | % href | select -First 1
	# $version = $url -split '/' | select -last 1 -skip 1
    $version = "5.4.9.0"

    # if url is empty return /mpvnet-player/mpv.net/releases/download/5.4.9.0/mpv.net-5.4.9.0-setup.exe


    if ($null -eq $url) {
        $url = "/mpvnet-player/mpv.net/releases/download/5.4.9.0/mpv.net-5.4.9.0-setup.exe"
    }

    @{
        URL   = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor all
