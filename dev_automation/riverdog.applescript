tell application "iTerm"
	activate
	
	# Split pane
	tell first session of current tab of current window
		split vertically with default profile
	end tell
	
	tell first session of current tab of current window
		write text "subl -n /Users/kevin/mounts/aegir.local/platforms/rd_dev"
		write text "ssh aegir@aegir.local"
		write text "cd platforms/rd_dev"
	end tell
	
	tell second session of current tab of current window
		write text "ssh aegir@aegir.local"
		write text "cd platforms/rd_dev/sites/all/themes/riverdog"
		write text "compass watch"
	end tell
end tell