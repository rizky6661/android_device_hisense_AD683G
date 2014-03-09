#!/system/bin/sh
# wifitest_send.sh 
# lixiuyong. 2012.04.05
# 
# 说明：
# 1.该脚本可满足高通平台wifi工艺测试功能，所做工作：（1）打开wifi设备-〉（2）加载模块，进入测试模式-〉（3）进入发射/接收状态；
# 2.调用该脚本实现wifi进入射频发射状态，其默认发射频率为2437MHz，发射功率为10dBm。


MODPATH=/system/lib/modules/ath6kl
MODARG=testmode=1

##########################################################
# STEP 1: Load wifi module and enter TCMD mode
##########################################################
rmmod wlan
rmmod cfg80211
sleep 2
/system/bin/insmod $MODPATH/cfg80211.ko 
/system/bin/insmod $MODPATH/ath6kl_sdio.ko $MODARG
sleep 2

######################################
# STEP 2: Enter continous sending mode.
######################################

/system/bin/athtestcmd -i wlan0 --tx frame --txfreq 2437 --txrate 0 --tgtpwr 
setprop persist.wifi.result 0

echo "wifi: enter RF sending mode."

exit 0



