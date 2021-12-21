#!/usr/bin/bash

if [[ $# -gt 0 ]]; then
  action="$1"

  case $action in
      -l|--links)
      URL="$2"
      curl -f -L $URL | grep -Eo '"*://([a-zA-Z0-9#~.*,/!?=+&_%:-]*)"' | awk -F':\/\/' '{ print $2 }'
      ;;
      --wpu)
      URL="$2"
      curl -f -L $URL/wp-json/wp/v2/users
      ;;
    esac
        
fi
