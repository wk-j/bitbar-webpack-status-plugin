#!/bin/bash
#
# <bitbar.title>Webpack Status</bitbar.title>
# <bitbar.version>v1.1.1</bitbar.version>
# <bitbar.author>Francesco Belladonna</bitbar.author>
# <bitbar.author.github>Fire-Dragon-DoL</bitbar.author.github>
# <bitbar.desc>Display the current status of webpack server compile: completed/ongoing/failed.</bitbar.desc>
# <bitbar.image>https://raw.githubusercontent.com/Fire-Dragon-DoL/bitbar-webpack-status-plugin/master/bitbar-webpack-status-plugin.jpg</bitbar.image>
# <bitbar.dependencies>node,webpack</bitbar.dependencies>
# <bitbar.abouturl>https://github.com/Fire-Dragon-DoL/bitbar-webpack-status-plugin</bitbar.abouturl>

color_red="✘ | color=#ff0000 dropdown=false"
color_yellow="◉ | color=#ffa500 dropdown=false"
color_green="✔︎ | color=#008000 dropdown=false"

webpack_status="/tmp/webpack-status"
semaphore=`cat $webpack_status`

semaphore_color=$color_yellow

# -1 red, 0 yellow, 1 green
case $semaphore in
-1)
  # Red
  semaphore_color=$color_red
  ;;
1)
  # Green
  semaphore_color=$color_green
  ;;
*)
  # Orange
  semaphore_color=$color_yellow
  ;;
esac

echo "$semaphore_color"
