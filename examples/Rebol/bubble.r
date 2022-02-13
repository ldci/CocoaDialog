#! /usr/local/bin/r3
REBOL [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
commands: [
	" bubble --title 'Installing Software Updates'" 
	" --text 'Safari 15.2'" 
	" --icon package"
]

append prog commands
call/shell/output prog returnStr
print returnStr