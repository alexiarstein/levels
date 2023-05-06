#!/bin/bash
#----------
# Levels by Alexia Rivera <alexia.sadc@gmail.com>
# -----------------------------------------------
# Returns octal value of a given dir/file.
# GNU GPL 3.0
# Setup Wizard.

echo "Welcome to Levels (Mini install wizard)"
echo "Version v1.0.1 - Alexia Rivera <alexia.sadc@gmail.com>"
echo ""
echo "SETUP"
echo "-----"
echo "1. Install levels"
echo "2. Remove levels from this system"
echo "3. Exit"
echo ""
echo "Your selection:     [1/2/3]"
read i
case $i in
1)
if [ "$(whoami)" != "root" ]; then
echo "run this install as sudo (or root)"
exit 1
else
sudo mv levels /usr/local/bin
echo "installed levels to /usr/local/bin"
exit 1
fi
;;
2)
if [ "$(whoami)" != "root" ]; then
echo "run this setup as sudo (or root)"
exit 1
else
sudo rm /usr/local/bin/levels
echo "levels removed."
exit 1
fi
;;
3)
exit 1
;;
*)
echo "Unknown option. Aborting setup"
exit 1
;;
esac
