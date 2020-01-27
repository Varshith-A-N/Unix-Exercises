#!/bin/bash
echo Please enther the path of the file!!!
read f_path

cat $f_path | grep "FAILED" | grep -o "http.*s3" > failed_api_calls.txt
grep -o "auth.*s3" failed_api_calls.txt > failed_parameters.txt 
cat $f_path | grep "FAILED" | grep -o "status.*" > failed_status.txt
