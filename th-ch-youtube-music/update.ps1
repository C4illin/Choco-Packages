import-module au

$releases = 'https://api.github.com/repos/th-ch/youtube-music/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum = Get-RemoteChecksum $Latest.URL
}

function global:au_GetLatest {
    $response = Invoke-RestMethod -Uri $releases
    $asset = $response.assets | Where-Object { $_.name -like "*.exe" } | Select-Object -Skip 1 -First 1
    $url = $asset.browser_download_url

    @{
        URL   = $url
        Version = $version
    }
}

update -ChecksumFor all