#!/usr/bin/env bash

echo "🚀 running \"$0\" on PID: $$ 🚀"

DEFAULT_HIBERNATE_MODE=$(pmset -g | grep hibernatemode) 
echo "📝 creating log in the \"default-hibernate-mode.txt\" file..."
echo "[$(date)]\nyour defaut hibernate mode was:\n$DEFAULT_HIBERNATE_MODE \nand your enegy sttings was:\n$(pmset -g)\n\n keep this note to easily turn back this configuration\n ----" >> "default-hibernate-mode.txt"
echo "your default hibernate mode variable is:\n$DEFAULT_HIBERNATE_MODE"
echo "💤 disabling sleep on your MacBook"
sudo pmset -a sleep 0
sudo pmset -a hibernatemode 0
sudo pmset -a disablesleep 1
