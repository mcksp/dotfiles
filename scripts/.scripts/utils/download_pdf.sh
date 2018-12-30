#!/bin/bash

file=$(find ~/Downloads -name "*.pdf" | dmenu -i -l 5)
nohup mupdf "$file" > /dev/null 2>&1&

