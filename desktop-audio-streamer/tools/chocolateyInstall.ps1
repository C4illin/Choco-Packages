$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'desktop-audio-streamer'
  url                    = 'https://github.com/SamDel/ChromeCast-Desktop-Audio-Streamer/files/12327597/Setup.5.3.zip' # Dont touch until do
  unzipLocation          = $env:TEMP
  checksum               = '64e8f78280ac898fea2ddb656b3cc6c2f310c0a2476a8cbbd144e0ea0caa65b6'
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
