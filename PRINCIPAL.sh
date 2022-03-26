#! /usr/bin/env bash
# con este script subimos todos los datos a thingspeak
#cpu
cp1min=$(cat /proc/loadavg |awk '{print $1}')
cp5min=$(cat /proc/loadavg |awk '{print $2}')
cp15min=$(cat /proc/loadavg |awk '{print $3}')


echo "$cp1min  , $cp5min ,$cp15min  "


#cpu
#sram

ocupada=`free -m | grep "Mem" | awk '{print $3}'`
#echo "memory space used : $ocupada MB"


#sram
#sdik

diskfree=$(df -BM /dev/sda1 | grep "/dev/sda1" |awk '{sub("M","",$4);print $4}')


#sdik
#API


api=$(curl -X GET "https://api.binance.com/api/v3/ticker/price?symbol=ETHBTC"|jq| grep "price"|awk '{print $2}'|tr -d '"')



#API


#LA SUBIDERA

curl https://api.thingspeak.com/update?api_key="OPUOTGW8A3HQUF73"\&field1="${cp1min}"\&field5="${cp5min}"\&field6="${cp15min}"\&field2="${ocupada}"\&field3="${diskfree}"\&field4="${api}"


