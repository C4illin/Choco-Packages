$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/5.4.8.0/mpv.net-setup-x86-5.4.8.0.exe'
  url64bit               = 'https://github.com/stax76/mpv.net/releases/download/5.4.8.0/mpv.net-setup-x64-5.4.8.0.exe'
  checksum               = '98C7B084EFF8898EC2E827AD69FC40E9D11FE399F617D64323C85FC438091536'
  checksum64             = '2BADA00B7B02BF4F067077E8B4F07E1DD7455BF41E1DE397959A55EB18DE6BD6'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
