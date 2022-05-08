import-module au

$releases = 'https://github.com/stax76/mpv.net/releases'

function global:au_SearchReplace {
    @{
        "mpv.net.nuspec" = @{
            "(\<dependency .+?`"mpvnet.portable`" version=)`"([^`"]+)`"" = "`$1`"$($Latest.Version)`""
        }
    }
}
function global:au_BeforeUpdate { }

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url   = $download_page.links | Where-Object href -match '.zip$' | ForEach-Object href | Select-Object -First 1
	$version = ($url -split '/' | Select-Object -last 1 -skip 1) -replace 'v'

    @{
        URL   = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor none