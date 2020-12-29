tell application "iTerm"
	activate
	
	# Split pane
	tell first session of current tab of current window
		split vertically with default profile
	end tell
	
	tell first session of current tab of current window
		write text "code -n ~/mounts/aegir.local/platforms/power_studies_dev"
		write text "ssh aegir@aegir.local"
		write text "cd platforms/power_studies_dev"
	end tell
	
	tell second session of current tab of current window
		write text "ssh aegir@aegir.local"
		write text "cd platforms/power_studies_dev/sites/all/themes/powerstudies"
		write text "compass watch"
	end tell
end tell