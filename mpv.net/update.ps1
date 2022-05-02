import-module au

#Virtual package uses dependency updater to get the version
. $PSScriptRoot\..\mpvnet.portable\update.ps1

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
            "(\<dependency .+?`"$($Latest.PackageName).portable`" version=)`"([^`"]+)`"" = "`$1`"$($Latest.Version)`""
        }
    }
}
function global:au_BeforeUpdate { }

update