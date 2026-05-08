#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install autoconf automake g++ make libssl-dev libmosquitto-dev libmosquitto1 -y
apt-get update -y

wget https://github.com/john30/ebusd/releases/download/26.1/ebusd-26.1_amd64-bookworm_mqtt1.deb
dpkg -i ebusd-26.1_amd64-bookworm_mqtt1.deb
apt-get update -y 
apt-get upgrade -y -f


ROOT=`pwd`

echo EBUSD_OPTS=\"-d enh:ebus-61e9c0:9999 --dump --dumpfile /root/ebusd.raw --scanconfig=full --configpath $ROOT/csv --lograwdata=bytes --mqtthost mosquitto --mqttport 1883 --mqttint $ROOT/mqtt-hassio.cfg  --mqttjson --lograwdatafile=/root/rawdata --lograwdatasize=10240 --latency=10\" > /etc/default/ebusd

systemctl enable ebusd
service ebusd start


exit

commandline_options:
  - "--configlang=ES"
  - "--mqtthost=mosquitto"
  - "--mqttport=1883"
  - "--mqttuser=mosquitto"
  - "--mqttpass=...."
  - "--mqtttopic=ebusd"
  - "--mqttjson"
  - "--mqttretain"
  - "--mqttint=/config/ebusd-configuration/mqtt-hassio.cfg"
  - "--configpath=/config/ebusd-configuration/ebusd-2.1.x/en/"
  - "--scanconfig"
  - "--latency=10"
device: >-
  /dev/serial/by-id/usb-Espressif_USB_JTAG_serial_debug_unit_9C:13:9E:DD:25:20-if00
network_device: >-
  ens:/dev/serial/by-id/usb-Espressif_USB_JTAG_serial_debug_unit_9C:13:9E:DD:25:20-if00