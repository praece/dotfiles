tell application "iTerm"
	activate
	
	tell first session of current tab of current window
		write text "umount ~/mounts/aegir.o1"
		write text "mkdir ~/mounts/aegir.o1"
		write text "sshfs o1.ftp@o1.aegir.praece.com:static/platforms/ /Users/kevin/mounts/aegir.o1 -o cache=no,reconnect,volname=aegir.o1"
	end tell
end tell