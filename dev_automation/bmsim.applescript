tell application "iTerm"
  activate
  
  # Split pane
  tell first session of current tab of current window
    split vertically with default profile
  end tell
  
  tell first session of current tab of current window
    write text "cd ~/code/pcbs-bmsim-cloud"
    write text "subl ."
  end tell
  
  tell second session of current tab of current window
    write text "cd ~/code/pcbs-bmsim-cloud"
    write text "piper manage.py runserver 3000"
  end tell
end tell