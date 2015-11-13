tell application "iTerm"
	activate
	
	tell first session of current tab of current window
		write text "umount /Users/kevin/mounts/tca"
		write text "mkdir /Users/kevin/mounts/tca"
		write text "sshfs technicalcable-praece@45.79.133.203:/ /Users/kevin/mounts/tca/ -p 2222 -o cache=no,reconnect,volname=tca"
	end tell
end tell
