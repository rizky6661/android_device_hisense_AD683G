#!/bin/sh
# Load Test cmd image into RAM. Lixiuyong.

MODPATH=/system/lib/modules/ath6kl
MODARG=testmode=1

rmmod wlan
rmmod cfg80211
sleep 2
/system/bin/insmod $MODPATH/cfg80211.ko 
/system/bin/insmod $MODPATH/ath6kl_sdio.ko $MODARG
sleep 1

exit 0
