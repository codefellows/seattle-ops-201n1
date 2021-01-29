# Ops Challenge - System Performance Indicators

## Demo Code

The demo code below introduces concepts necessary to complete the challenge. New operations include how to write a function in bash, and having an application open a file in the GUI and have it do something.

```bash
#!/bin/bash

# Script:                       Ops 201 Ops Chall 04
# Author:                       David Lee
# Date of latest revision:      7/20/2020
# Purpose:                      Function

# How to declare a function 
this_function(){
  echo "hello world"
}

# How to run a function
this_function

# How to run lshw
lshw -short

# View how much memory is available
free

# System performance
vmstat

# Save information to a file
vmstat > vmstat.txt

# Open an application
firefox
libreoffice

# Open an application and have it do something
firefox https://www.codefellows.org/courses/ops-201/foundations-of-computer-operations/
libreoffice --writer vmstat.txt

# Read manual for an application
man firefox
man libreoffice

# End

```
