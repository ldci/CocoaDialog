#! /usr/local/bin/r3
REBOL [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"

commands: [
" slider --title 'Slider Demo'" 
" --button1 OK" 
" --button2 Cancel" 
" --min 0 --max 1000" 
" --icon globe" 
" --slider-label Cases"
" --always-show-value" 
]

append prog commands
call/shell/output prog returnStr
print returnStr