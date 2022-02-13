#! /usr/local/bin/red
Red [
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