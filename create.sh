#!/bin/bash

#$1: Target URL
#$2: Page Name

rm -rf 'testiceprofile'
cp -Rfa 'profileskel' 'testiceprofile'

sed -i "s^WEBSITEHERE^$1^g" testiceprofile/user.js
sed -i "s^NAMEHERE^$2^g" testiceprofile/user.js

flatpak override org.mozilla.firefox --filesystem="$(pwd | sed 's^'"$HOME"'/^~/^g')/testiceprofile" --user
