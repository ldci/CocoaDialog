#! /usr/local/bin/r3
REBOL [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"

commands: [
	" textbox --title 'Editor'"
	" --text-from-file cinderella.txt"
	" --editable"
	" --focus-textbox"
	" --button1 'Ok'" 
	" --button2 'Cancel'"
]
append prog commands
call/shell/output prog returnStr
print returnStr
