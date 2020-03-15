$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = '<%=package_name%>'
  fileType               = 'MSI'
  url                    = '' # Dont touch until do
  url64bit               = ''
  checksum               = ''
  checksum64             = ''
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = '<%=title%>*'
  silentArgs             = '/qn' # Do touch
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
