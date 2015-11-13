COMMAND="$1"

if [ -z "$COMMAND" ]; then
	for i in ~/config/dev_automation/*.applescript ; do
		FILE=$(basename "$i" .applescript)
		echo "$FILE"
	done
else
	osascript "${HOME}/config/dev_automation/$COMMAND.applescript"
fi