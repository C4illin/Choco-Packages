$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/5.4.2/mpv.net-setup-x86-5.4.2.0.exe'
  url64bit               = 'https://github.com/stax76/mpv.net/releases/download/5.4.2/mpv.net-setup-x64-5.4.2.0.exe'
  checksum               = '8f1c0ed30c85e5fde21cc080dbd5e703ac9768ebadcd94fa8cb66bad00ae7525'
  checksum64             = '24ad6f1704519a6fa7c9a9f9f9f711e778fb298c9330e2327ea2a55bf2037985'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
