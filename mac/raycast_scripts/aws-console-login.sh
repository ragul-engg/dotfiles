#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title AWS Console Login
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ☁️
# @raycast.argument1 { "type": "text", "placeholder": "Your AWS Profile" }

aws-vault login $1 -d 8h
