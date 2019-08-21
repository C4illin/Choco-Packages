$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/5.3/mpv.net-setup-x86-5.3.0.0.exe'
  url64bit               = 'https://github.com/stax76/mpv.net/releases/download/5.3/mpv.net-setup-x64-5.3.0.0.exe'
  checksum               = 'ef53dbbff50392b82d8b3eedb8fec36a12f8476a42a4ccd44c4b25be5bb1ee57'
  checksum64             = '5261ace1f0397f304ecb900fb39e836bf8bc6c085955f68eda7e9a26b773334f'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
