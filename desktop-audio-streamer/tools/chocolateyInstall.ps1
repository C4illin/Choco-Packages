$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'desktop-audio-streamer'
  url                    = 'https://github.com/user-attachments/files/19473520/ChromecastDesktopAudioStreamer_5.5.zip' # Dont touch until do
  unzipLocation          = $env:TEMP
  checksum               = '8e8fef2d53155d1bfd2b422dd5f73412ff71c6c586c2c8b34fd1b1003c233493'
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
