#!/bin/bash
# Basic IP limit checker (template)
MAX=2
USER=$1
COUNT=$(netstat -ntu | awk '{print $5}' | cut -d: -f1 | grep -c .)
if [ "$COUNT" -gt "$MAX" ]; then
  usermod -L "$USER"
fi
