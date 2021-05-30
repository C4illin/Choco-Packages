$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/5.4.8.0/mpv.net-setup-x64-5.4.8.0.exe'
  url64bit               = 'https://github.com/stax76/mpv.net/releases/download/5.4.9.0/mpv.net-5.4.9.0-setup.exe'
  checksum               = '2bada00b7b02bf4f067077e8b4f07e1dd7455bf41e1de397959a55eb18de6bd6'
  checksum64             = 'd83a992146a67977d510342063a275a6af866350760af2cb0b6447b53ea48299'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
