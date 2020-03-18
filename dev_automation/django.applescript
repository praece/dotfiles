on run argv
  tell application "iTerm"
    activate

    -- Split pane
    tell first session of current tab of current window
      split vertically with default profile
    end tell
    
    tell first session of current tab of current window
      write text "django-admin startproject " & item 2 of argv
      write text "cd ~/code/" & item 2 of argv
      write text "PIPENV_VENV_IN_PROJECT=1 pipenv install django"
      write text "pipenv install dj-database-url"
      write text "pipenv install python-dotenv"
      write text "pipenv install django-bootstrap4"
      write text "pipenv install django-silk"
      write text "pipenv install psycopg2-binary"
      write text "piper manage.py startapp " & item 3 of argv
      write text "git init"
      write text "git remote add origin git@git.praece.com:praece" & item 2 of argv & "/.git"
      write text "s"
    end tell
    
    tell second session of current tab of current window
      write text "cd ~/code/" & item 2 of argv
    end tell
  end tell
end run