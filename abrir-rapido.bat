@echo off
rem Abre el contador como ventana de app, ocupando un cuarto de la pantalla (mitad de ancho x mitad de alto).
rem Usa el primer navegador basado en Chromium que encuentre; si no hay ninguno, el predeterminado.
set "URL=file:///%~dp0src/index.html"
for /f %%i in ('powershell -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width/2 -as [int]"') do set "W=%%i"
for /f %%i in ('powershell -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height/2 -as [int]"') do set "H=%%i"
if not defined W set "W=340"
if not defined H set "H=480"
for %%B in (chrome brave vivaldi msedge) do (
  reg query "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\%%B.exe" >nul 2>&1 && (start "" %%B --app="%URL%" --window-size=%W%,%H% & exit /b)
  reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\%%B.exe" >nul 2>&1 && (start "" %%B --app="%URL%" --window-size=%W%,%H% & exit /b)
)
start "" "%~dp0src\index.html"
