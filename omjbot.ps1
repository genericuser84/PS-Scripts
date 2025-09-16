# Be sure to use *full paths
$urlShortcutPath = "C:\users\public\Desktop\ChatBot.url"
$url = 'https://jfs.ohio.gov/job-services-and-unemployment/unemployment?omj_office=true'
$iconPath = 'C:\Program Files\Google\Chrome\Application\chrome.exe'

# Create the shortcut
$urlShortcut = (New-Object -ComObject WScript.Shell).CreateShortcut($urlShortcutPath)
$urlShortcut.TargetPath = $url


# Append the icon information.
'IconIndex=0', "IconFile=$iconPath" |
  Add-Content -LiteralPath $urlShortcutPath

$urlShortcut.Save()
