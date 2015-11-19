tell application "iTerm"
	activate
	
	# Split pane
	tell first session of current tab of current window
		split vertically with default profile
	end tell
	
	tell first session of current tab of current window
		write text "cd ~/code/reporting/react-ui"
		write text "s"
		write text "gst"
	end tell
	
	tell second session of current tab of current window
		write text "cd ~/code/reporting/react-ui"
		write text "npm start"
	end tell
end tell