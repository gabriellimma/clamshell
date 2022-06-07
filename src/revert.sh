#!/usr/bin/env bash

echo "🚀 running \"$0\" on PID: $$ 🚀"
echo "[$(date)]:✅ reverting clamshell start.sh script ✅"

FIRST_MATCH_AT_DEFAULT_HIBERNATE_MODE_FILE=$(cat default-hibernate-mode.txt| grep hibernatemode -a -m 1 | awk '{print $2}')
sudo pmset -a sleep 1
sudo pmset -a hibernatemode $FIRST_MATCH_AT_DEFAULT_HIBERNATE_MODE_FILE
sudo pmset -a disablesleep 0

echo "[$(date)]\nhibernate mode changed to original values" >> "default-hibernate-mode.txt"
echo "[$(date)]:✅ done ✅"