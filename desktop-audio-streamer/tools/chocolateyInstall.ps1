$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'desktop-audio-streamer'
  url                    = 'https://github.com/SamDel/ChromeCast-Desktop-Audio-Streamer/files/12320434/Setup.5.2.zip' # Dont touch until do
  unzipLocation          = $env:TEMP
  checksum               = 'd339ae2df4ffed5e8db2dbc85aab914ade3be453ebf1b4bdb188630d3f4e0c4f'
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
