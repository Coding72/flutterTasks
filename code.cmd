@echo off
setlocal
set VSCODE_DEV=
set ELECTRON_RUN_AS_NODE=1
set ARGUMENTS=flutterTasks.code-workspace
"c:\portable\vscode\Code.exe" "c:\portable\vscode\resources\app\out\cli.js" %ARGUMENTS%
endlocal