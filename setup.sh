#!/bin/bash

#Set PATHs
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

#Add color to bash
echo 'export CLICOLOR=1' >> ~/.bash_profile

#Install applications etc...
./brew.sh
