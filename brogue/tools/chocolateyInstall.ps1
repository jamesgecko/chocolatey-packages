$packageName = 'brogue'
$url = 'https://sites.google.com/site/broguegame/Brogue%20Windows%20v1.7.2.zip?attredirects=0'

try {
	$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
	Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"
	Install-ChocolateyDesktopLink "$($installDir)\Brogue v1.7.2\brogue.exe"
} catch {
	throw
}