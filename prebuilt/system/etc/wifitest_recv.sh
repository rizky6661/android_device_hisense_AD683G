#!/system/bin/sh
# wifitest_recv.sh 
# lixiuyong. 2012.04.05
# 
# 说明：
# 1.该脚本可满足高通平台wifi工艺测试功能，所做工作：（1）打开wifi设备-〉（2）加载模块，进入测试模式-〉（3）进入接收状态；
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
# STEP 2: Enter continous recv mode.
######################################

/system/bin/athtestcmd -i wlan0 --rx promis --rxfreq 2437 

echo "wifi: enter RF receiving mode."
sleep 2

/system/bin/athtestcmd -i wlan0 --rx report 
setprop persist.wifi.result 0

exit 0