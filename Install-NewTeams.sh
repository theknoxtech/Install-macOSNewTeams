#!/bin/bash

# Check for Teams app
if [ ! -d "/Applications/Microsoft Teams.app" ]; then

      echo "Downloading MicrosoftTeams.pkg"

      curl -L -o /tmp/MicrosoftTeams.pkg https://statics.teams.cdn.office.net/production-osx/enterprise/webview2/lkg/MicrosoftTeams.pkg

      echo "Installing Microsoft Teams"

      installer -pkg /tmp/MicrosoftTeams.pkg -target /Applications

      echo "SUCCESS: Microsoft Teams has been installed"

elif [ -d "/Applications/Microsoft Teams.app" ]; then

    echo "FAILURE: Teams is already installed on the target Mac, please use Uninstall-NewTeams before running this script"

fi