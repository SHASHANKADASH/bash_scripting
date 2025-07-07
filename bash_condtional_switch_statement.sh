#!/bin/bash
# case syntax
#
# case "$VAR" in
#  1) echo 1
#  ;;
#  2|3) echo 2 or 3
#  ;;
#  *) echo default
#  ;;
#esac

read -p "What is your country: " country
case ${country} in
"India")
  echo "Your currency is Rupee"
  ;;
"England")
  echo "Your currency is pound"
  ;;
"UAE")
  echo "Your currency is Dirham"
  ;;
*)
  echo "Invalid country"
  ;;
esac
