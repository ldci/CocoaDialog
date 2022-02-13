#! /usr/local/bin/r3
REBOL [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
commands: [
	" msgbox --text 'Hello Rebol World!'"
	" --title Hello World"
	" --icon info --button1 'OK'"
	" --button2 'Cancel'"
] 
append prog commands
call/shell/output prog returnStr
print returnStr