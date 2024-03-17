#!/bin/sh

# Note:
#
# - Add path from root as the value of variable "BEHANSA_REPOSITORY"
# - Link this file to the behansa.desktop script

# Global repository paths
export BEHANSA_REPOSITORY=

# Executable paths
export PATH=$PATH:${BEHANSA_REPOSITORY}/Binary/Linux/Editor/bin/
export PATH=$PATH:${BEHANSA_REPOSITORY}/Binary/Linux/Terminal/Wezterm/usr/bin

# Internal configuration paths
export WEZTERM_CONFIG_FILE=${BEHANSA_REPOSITORY}/Script/Terminal/Wezterm/.wezterm.lua

# Alias
alias behansa="wezterm"

# Run application
behansa