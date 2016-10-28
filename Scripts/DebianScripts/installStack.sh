#!/bin/bash


# Install Stack on the current machine


# Globals
USER=$(whoami)


# Update the PATH variable
export PATH="$PATH:/home/$USER/.local/bin"


# Download and install stack
curl -sSL https://get.haskellstack.org/ | sh

