$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'desktop-audio-streamer'
  url                    = 'https://github.com/SamDel/ChromeCast-Desktop-Audio-Streamer/files/14811300/ChromecastDesktopAudioStreamer.5.4.zip' # Dont touch until do
  unzipLocation          = $env:TEMP
  checksum               = '645d50accfd7e0a8c47fb2ac35e7ccae5fd8180835f85d4258df7cd965ef75c0'
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
