rmmod wlan
rmmod cfg80211
sleep 2
echo "1">/sys/class/rfkill/rfkill0/state
sleep 1
hci_qcomm_init -d /dev/ttyHS0 -s 3000000
sleep 3
hciattach -n /dev/ttyHS0 qualcomm-ibs 3000000 &
sleep 1
hciconfig hci0 up
sleep 1
hcitool cmd 0x06 0x0003
sleep 1
hcitool cmd 0x03 0x0005 0x02 0x00 0x02
sleep 1
hcitool cmd 0x03 0x001A 0x03
sleep 1
hcitool cmd 0x03 0x0020 0x00
sleep 1
hcitool cmd 0x03 0x0022 0x00