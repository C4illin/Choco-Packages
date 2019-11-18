import-module au

$releases = 'https://www.airexplorer.net/en/download.php'
$url      = 'https://www.airexplorer.net/downloads/AirExplorer-OnlineInstaller.exe'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum = Get-RemoteChecksum $Latest.URL
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    $version = $download_page.ParsedHtml.querySelector(".elementor-element-39f4fd2").querySelector("h3").outerText -split " " | select -last 1

    @{
        URL     = $url
        Version = $version
    }
}

update -ChecksumFor all