#! /usr/local/bin/red
Red [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
commands: [
	" bubble --title 'Installing Software Updates'" 
	" --text 'Safari 15.2'" 
	" --icon-file '/System/Library/CoreServices/Software Update.app/Contents/Resources/SoftwareUpdate.icns'"
]

append prog commands
call/shell/output prog returnStr
print returnStr