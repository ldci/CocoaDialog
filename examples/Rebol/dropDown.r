#! /usr/local/bin/r3
REBOL [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"

commands: [
" dropdown --title "Survey" --text 'Favorite language?'" 
" --items" " Red/System" " Red" " Rebol3" " Rebol2"
" --width 40"
" --exit-onchange"
" --button1 'Ok'" 
]
append prog commands
call/shell/output prog returnStr
print returnStr
