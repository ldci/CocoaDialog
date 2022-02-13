#! /usr/local/bin/red
Red [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
commands: [
	" ok-msgbox --text 'We need to make sure you see this message'" 
    " --informative-text '(Yes, the message was to inform you about itself)'" 
    " --no-newline --float"
	" --icon stop --icon-size 128 --height 190"
]

append prog commands
call/shell/output prog returnStr
print returnStr
