#! /usr/local/bin/red
Red [
]
returnStr: ""
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"

conf: [
" checkbox --title stuff" 
" --button1 button1" 
" --button2 button2"
" --items checkbox1 checkbox2 checkbox3 checkbox4"
" --icon computer" 
" --icon-size 128"
" --debug"
]

append prog conf
call/shell/output prog returnStr
print returnStr