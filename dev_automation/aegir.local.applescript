tell application "iTerm"
	activate
	
	tell first session of current tab of current window
		write text "umount ~/mounts/aegir.local"
		write text "mkdir ~/mounts/aegir.local"
		write text "sshfs aegir@aegir.local:/var/aegir /Users/kevin/mounts/aegir.local -o cache=no,reconnect,volname=aegir.local"
	end tell
end tell