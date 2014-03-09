#!/system/bin/sh
# remove_wifi_mod.sh
# zhangjingxin 2011/12/13
# function : remove wifi module
rmmod wlan
rmmod cfg80211
sleep 2
exit 0