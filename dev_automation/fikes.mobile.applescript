tell application "iTerm"
	activate
	
	# Split pane
	tell first session of current tab of current window
		split horizontally with default profile
	end tell
	
	tell first session of current tab of current window
		write text "cd ~/code/fikes/mobile-ui"
		write text "subl ."
	end tell
	
	tell second session of current tab of current window
		write text "cd ~/code/fikes/mobile-ui"
		write text "ionic serve -p 3001"
	end tell
end tell