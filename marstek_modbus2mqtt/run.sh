#!/bin/bash
set -e

echo "[INFO] Starting Marstek Modbus2MQTT Add-on..."

MODBUS_HOST=$(jq -r '.modbus_host' /data/options.json)
MODBUS_PORT=$(jq -r '.modbus_port' /data/options.json)
MQTT_HOST=$(jq -r '.mqtt_host' /data/options.json)
MQTT_PORT=$(jq -r '.mqtt_port' /data/options.json)

echo "[INFO] Using Modbus Host: $MODBUS_HOST"
echo "[INFO] Using MQTT Host: $MQTT_HOST"

CONFIG_FILE="/config/config.yaml"

sed "s|__MODBUS_HOST__|$MODBUS_HOST|g;
     s|__MODBUS_PORT__|$MODBUS_PORT|g;
     s|__MQTT_HOST__|$MQTT_HOST|g;
     s|__MQTT_PORT__|$MQTT_PORT|g" /config_template.yaml > $CONFIG_FILE

echo "[INFO] Generated config.yaml:"
cat $CONFIG_FILE

echo "[INFO] Launching modbus2mqtt with --config $CONFIG_FILE..."
modbus2mqtt --config $CONFIG_FILE
