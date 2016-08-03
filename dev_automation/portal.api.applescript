tell application "iTerm"
	activate
	
	# Split pane
	tell first session of current tab of current window
		split vertically with default profile
	end tell
	
	tell first session of current tab of current window
		write text "cd ~/code/portal/api"
		write text "s"
		write text "gst"
	end tell
	
	tell second session of current tab of current window
		write text "cd ~/code/portal/api"
	end tell
end tell