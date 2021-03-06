#!/system/bin/sh

savelog()
{
    PRODUCT=`getprop ro.product.name`
    LOGDATE=`date +'%Y_%m_%d'`
    LOGTIME=`date +'%Y%m%d_%H%M%S'`
    LOGPATH=/sdcard/Debug_Log_$PRODUCT
    DATEPATH=$LOGPATH/$LOGDATE
    LOGFILE=$DATEPATH/Kmsg_$LOGTIME
    mkdir $LOGPATH
    mkdir $DATEPATH
    echo -e "\n\n\n\nKernel log begin!\n" | cat >> $LOGFILE
    cat < tmp | date >> $LOGFILE
    cat /proc/kmsg >> $LOGFILE
}

while true
do
    for i in `mount`
    do
        case $i in
        "/mnt/sdcard")
            savelog
        esac
    done
sleep 2
done