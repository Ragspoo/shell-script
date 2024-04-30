#!/bin/bash

COURSE="DevOps from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"

#./21. Other-script.sh

source ./21.\ Other-script.sh

echo "After calling other script, course: $COURSE"