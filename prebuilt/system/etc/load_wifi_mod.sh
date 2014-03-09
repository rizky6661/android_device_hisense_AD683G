#!/system/bin/sh
# load_wifi_mod.sh
# zhangjingxin 2011/10/19
# function : load wifi module

MODULEPATH=/system/lib/modules/ath6kl
/system/bin/insmod $MODULEPATH/cfg80211.ko 
/system/bin/insmod $MODULEPATH/ath6kl_sdio.ko
sleep 4
exit 0