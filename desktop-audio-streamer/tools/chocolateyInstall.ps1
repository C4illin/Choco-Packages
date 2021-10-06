$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'desktop-audio-streamer'
  url                    = 'https://github.com/SamDel/ChromeCast-Desktop-Audio-Streamer/files/7290615/Setup.3.8.zip' # Dont touch until do
  unzipLocation          = $env:TEMP
  checksum               = 'bd09a96164fe75a3b68f38ad76b27933d9757ebf6caaf8e1c3add8d5a529396d'
  checksumType           = 'sha256'
}

$fileLocation = Join-Path -Path $env:TEMP -ChildPath "Setup.msi"

$installArgs = @{
  packageName            = 'desktop-audio-streamer'
  fileType               = 'MSI'
  file                   = $fileLocation
  silentArgs             = '/qn' # Do touch
  validExitCodes         = @(0)
  softwareName           = 'Desktop Audio Streamer*'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyInstallPackage @installArgs
