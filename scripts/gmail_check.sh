#!/bin/bash

username="pwitos"
password=""
curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" |  grep -oPm1 "(?<=<title>)[^<]+" | sed '1d' | wc -l 
