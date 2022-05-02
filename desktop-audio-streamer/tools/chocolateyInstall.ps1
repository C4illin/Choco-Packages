$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'desktop-audio-streamer'
  url                    = 'https://github.com/SamDel/ChromeCast-Desktop-Audio-Streamer/files/8571154/Setup.4.0.zip' # Dont touch until do
  unzipLocation          = $env:TEMP
  checksum               = '66a8fe6fe37c661eb5dacb8be4157edfd10dbcde16003be31612bb18dd193668'
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
