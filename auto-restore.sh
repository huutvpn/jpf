#!/bin/bash
# Restore latest backup automatically
LATEST=$(ls -t backup/*.zip 2>/dev/null | head -n1)
[ -z "$LATEST" ] && echo "No backup found" && exit 1
unzip -o "$LATEST" -d /
