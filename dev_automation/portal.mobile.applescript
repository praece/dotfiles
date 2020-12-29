tell application "iTerm"
	activate
	
	# Split pane
	tell first session of current tab of current window
		split vertically with default profile
	end tell
	
	tell first session of current tab of current window
		write text "cd ~/code/portal/PortalMobile"
		write text "code"
	end tell

	tell second session of current tab of current window
		write text "cd ~/code/portal/PortalMobile"
        write text "npx react-native start"
	end tell
end tell