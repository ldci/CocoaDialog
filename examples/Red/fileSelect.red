#! /usr/local/bin/red
Red [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
commands: { fileselect --title 'This is a fileselect'}
append prog commands
call/shell/output prog returnStr
print returnStr