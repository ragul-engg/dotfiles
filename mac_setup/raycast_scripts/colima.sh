#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Colima
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "dropdown", "placeholder": "Start/Stop", "data": [{"title": "Start", "value": "start"}, {"title": "Stop", "value": "stop"}]  }
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.description Script to control your colima instance
# @raycast.author Ragul
# @raycast.authorURL https://github.com/ragul-engg

colima $1
echo "Colima $1 ✅"
