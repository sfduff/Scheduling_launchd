# Scheduling example using launchd 

Automating the update of docker containers running Minecraft instances.  Each time the container is recreated it downloads the latest version of bedrock server.


Scheduling a task for the current logged in user, the plist file needs to go in the ***/Library/LaunchAgents*** folder

```cd /Library/LaunchAgents```

```sudo nano update_minecraft.plist```

Once created, to load it without logging out and back in again run the following command

```launchctl load /Library/LaunchAgents/update_minecraft.plist```

ditto to unload, before making changes etc.

```launchctl unload /Library/LaunchAgents/update_minecraft.plist```

example ```update_minecraft.plist``` file included runs every day becuase the following is missing

```
<key>Weekday</key>
<integer>1</integer>
```
