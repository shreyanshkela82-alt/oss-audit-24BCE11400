#!/bin/bash

DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)
LICENSE="GNU General Public License (GPL)"

echo "========================================="
echo "     WELCOME TO YOUR LINUX SYSTEM"
echo "========================================="
echo ""
echo "System Information:"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo ""
echo "User Information:"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo ""
echo "System Status:"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_DATE"
echo ""
echo "License Info:"
echo "This operating system is covered under the $LICENSE."
echo ""
echo "========================================="
echo "   Have a great day, $USER_NAME!"
echo "========================================="
