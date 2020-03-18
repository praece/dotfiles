tell application "iTerm"
    activate
    
    tell first session of current tab of current window
        write text "cd ~/code/portal/api"
        write text "dokku postgres:export praece-portal-live-db > ../portal.dump"
        write text "pg_restore -c -U postgres -d portal ../portal.dump"
    end tell
end tell