#!/bin/bash
echo Please enther the path of the file!!!
read f_path

cat $f_path | grep "RuntimeError: Media" | grep -o "Media *[0-9]*" | sort -u > failed_media.txt
