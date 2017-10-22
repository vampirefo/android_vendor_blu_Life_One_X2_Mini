#!/system/bin/sh

#########################################################################
# File Name: tinno_audio_dump.sh
# Author: sunny.sang
# Created Time: 
#########################################################################

LOG_PATH=/storage/emulated/0/Logs/Dump
DATE_INFO=`date  "+%Y_%m%d_%H%M"`

while true
do 
	mkdir -p $LOG_PATH
	touch /storage/emulated/0/Logs/Dump/test_dump_file; 
	if [ -f "/storage/emulated/0/Logs/Dump/test_dump_file" ]; then 
		cat /d/asoc/msm8952-snd-card-mtp/codec:msm8x16_wcd_codec-*/codec_reg >$LOG_PATH/codec_reg_$DATE_INFO.txt
		break; 
	fi; 
	sleep 5; 
done