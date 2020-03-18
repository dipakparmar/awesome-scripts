
#!/bin/bash

echo "Removing Studio.app"

# Deletes the Android Studio application
# Note that this may be different depending on what you named the application as, or whether you downloaded the preview version
sudo rm -Rf /Applications/Android\ Studio.app

echo "Removed Studio.app"

echo "Removing All Android Studio related preferences"

# Delete All Android Studio related preferences
# The asterisk here should target all folders/files beginning with the string before it
sudo rm -Rf ~/Library/Preferences/AndroidStudio*
# Deletes the Android Studio's plist file
sudo rm -Rf ~/Library/Preferences/com.google.android.*
# Deletes the Android Emulator's plist file
sudo rm -Rf ~/Library/Preferences/com.android.*
# Deletes mainly plugins (or at least according to what mine (Edric) contains)
sudo rm -Rf ~/Library/Application\ Support/AndroidStudio*
# Deletes all logs that Android Studio outputs
sudo rm -Rf ~/Library/Logs/AndroidStudio*
# Deletes Android Studio's caches
rm -Rf ~/Library/Caches/AndroidStudio*
# Deletes older versions of Android Studio
sudo rm -Rf ~/.AndroidStudio*

echo "Removed All Android Studio related preferences"

# echo "Do you want to remove your projects?"
# select yn in "Yes" "No"
# case $yn in
#     Yes ) sudo rm -Rf ~/AndroidStudioProjects;;
#     No ) echo "No projects are removed!"
# esac

read -p "Do you want to remove your projects? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "removing projects!"
    sudo rm -Rf ~/AndroidStudioProjects;
fi

echo "All things removed!"
# rm -Rf ~/.gradle
# rm -Rf ~/.android
# rm -Rf ~/Library/Android*
# rm -Rf ~/.emulator_console_auth_token