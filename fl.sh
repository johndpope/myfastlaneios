#!/bin/bash
#!/usr/local/bin/
#!/usr/bin/env
#!/usr/bin/ruby
PLISTBUDDY="/usr/libexec/PlistBuddy"
InfoPlistPath="./Job.plist"

while true
do
	${PLISTBUDDY} -c "Set :JobExecutionInProgress false" ${InfoPlistPath}
    python flJobManager.py
    
    echo "Press [CTRL+C] to stop.."
    sleep 10

done
