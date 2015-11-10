COMMAND="$1"

if [ -z "$COMMAND" ]; then
	for i in ~/config/scripts/*.applescript ; do
		FILE=$(basename "$i" .applescript)
		echo "$FILE"
	done
else
	osascript "${HOME}/config/scripts/$COMMAND.applescript"
fi