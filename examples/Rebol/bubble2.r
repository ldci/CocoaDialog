#! /usr/local/bin/r3
REBOL [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
commands: [
	" bubble --title 'My first bubble'" 
	" --text 'How do you like it?'" 
	" --icon hazard --icon-height 128 --icon-width 128"
]

append prog commands
call/shell/output prog returnStr
wait 1

commands: [
	" bubble --title 'Setting colors'" 
	" --text 'Green to light green'" 
	" --background-top 00cb24" 
	" --background-bottom aefe95" 
	" --icon hazard"
]
append prog commands
call/shell/output prog returnStr
wait 1

prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
commands: [ 
	" bubble --debug --titles 'First bubble' 'Second bubble'"        
	" --texts  'Body of bubble 1' 'Body of bubble 2'"
	" --border-colors '2100b4' 'a25f0a'"          
	" --text-colors '180082' '000000'"                   
	" --background-tops 'aabdcf' 'dfa723'"               
	" --background-bottoms '86c7fe' 'fdde88'" 
	" --icons globe computer"
]   

 
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
append prog commands
call/shell/output prog returnStr