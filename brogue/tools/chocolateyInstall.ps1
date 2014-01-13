$packageName = 'brogue'
$url = 'https://sites.google.com/site/broguegame/Brogue-windows-v1.7.3.zip?attredirects=0&d=1'

try {
	$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
	Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"
	Install-ChocolateyDesktopLink "$($installDir)\Brogue-windows-v1.7.3\brogue.exe"
} catch {
	throw
}