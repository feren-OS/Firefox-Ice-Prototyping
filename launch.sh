#!/bin/bash

flatpak run org.mozilla.firefox -profile "$(pwd)/testiceprofile" -no-remote -new-instance
