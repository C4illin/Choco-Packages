$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/5.4.3.0/mpv.net-setup-x86-5.4.2.1.exe'
  url64bit               = 'https://github.com/stax76/mpv.net/releases/download/5.4.3.0/mpv.net-setup-x64-5.4.3.0.exe'
  checksum               = '322271cc23364ae052c2829162cfbe12f441c74647305e6da7c34528ba214450'
  checksum64             = 'cced66af5c0354dd8be89c37a64ac1076a662e7186f7532a3ab65711724ff564'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
