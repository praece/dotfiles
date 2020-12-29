tell application "iTerm"
	activate
	
	# Split pane
	tell first session of current tab of current window
		split vertically with default profile
	end tell
	
	tell first session of current tab of current window
		write text "cd ~/code/fikes/web-ui"
		write text "code ."
	end tell
	
	tell second session of current tab of current window
		write text "cd ~/code/fikes/web-ui"
		write text "gulp serve"
	end tell
end tell