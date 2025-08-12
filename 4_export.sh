#!/bin/bash
echo ""
echo "###############################################################################################"
echo ""

echo "the \`export\` command is used to set environment variables for the bash session of the user who ran it."
echo "e.g. export PHONE=\"APPLE\""
echo "This, however, will only stay for that current session."

echo ""

echo "If we want to set a variable permanently, we need to edit the .bashrc file"
echo "export the variable instead. Write export VARIABLE_NAME=\"value\" there."
echo "If we want to do it globally to every user, write this in the /etc/profile file"

echo ""

echo "However, keep in mind that the .bashrc commands are more prioritized than the /etc/profile"
echo "The export in .bashrc will overwrite the one in /etc/profile"
echo ""

echo "###############################################################################################"
echo ""
