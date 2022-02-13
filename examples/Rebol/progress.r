#! /usr/local/bin/r3
REBOL [
]
returnStr: ""

str: {   echo "5 We're now at 5%"; sleep .5
	sleep 1
	echo "20 We're now at 20%"; sleep .5
	sleep 2
	echo "30 We're now at 30%"; sleep .5
	sleep 3
	echo "40 We're now at 40%"; sleep .5
	echo "100 We're now at 100%"; sleep .5
}
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
commands: [
	" progressbar --float --title 'Progress'"
	" --text 'Reading File'"
	" --percent 0"
	" --timeout 0.5"
]


append prog commands
call/shell/output prog returnStr
commands/3: " --percent 40"
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
append prog commands
call/shell/output prog returnStr
commands/3: " --percent 80"
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
append prog commands
call/shell/output prog returnStr
commands/2: " --text 'Done'" 
commands/3: " --percent 100"
commands/4: " --timeout 1"
prog: "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
append prog commands
call/shell/output prog returnStr
print returnStr