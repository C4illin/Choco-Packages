$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/5.4.1/mpv.net-setup-x86-5.4.1.0.exe'
  url64bit               = 'https://github.com/stax76/mpv.net/releases/download/5.4.1/mpv.net-setup-x64-5.4.1.0.exe'
  checksum               = '7dd82c3dcc6db3e1bf9699d05492e2ce26863c7c64b392b4da44ea9f100399ab'
  checksum64             = '80d6fdd561c2fc5793f4d1abac54c23f5997726a879a443776b4b9ace78c48a7'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
