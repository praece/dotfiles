tell application "iTerm"
	activate
	
	tell first session of current tab of current window
		write text "cd ~/mounts/wppa"
		write text "s"
	end tell
end tell
