#!/usr/bin/env bash
lsof -i:80 | grep node | awk '{print $2}' | xargs kill
#ps -e | grep node | awk '{print $1}' | xargs kill -9
echo after kill
ps
# node app.js > log.txt &
npm start &
echo after restart
ps
ippath=`ifconfig en0 | grep inet | grep -v inet6 | cut -d " " -f2 `;
echo -e "visit \033[44;37;5m http://"$ippath" \033[0m\n"