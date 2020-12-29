tell application "iTerm"
  activate
  
  # Split pane
  tell first session of current tab of current window
    split vertically with default profile
  end tell
  
  tell first session of current tab of current window
    write text "cd ~/code/prospect-portal"
    write text "code ."
  end tell
  
  tell second session of current tab of current window
    write text "cd ~/code/prospect-portal"
    write text "piprun"
  end tell
end tell