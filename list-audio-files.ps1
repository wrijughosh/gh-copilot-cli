$folder = "D:\temp"
$audioExtensions = @("*.mp3","*.wav","*.flac","*.aac","*.ogg","*.wma","*.m4a","*.opus","*.aiff")

Get-ChildItem -Path $folder -Recurse -Include $audioExtensions -File |
    Select-Object Name, Extension, @{Name="SizeMB";Expression={[math]::Round($_.Length/1MB,2)}}, LastWriteTime |
    Format-Table -AutoSize
