#!/bin/bash

SERVICE_NAME=mkdocks-local
SYSTEMD_CONF_FILE=/etc/systemd/system/${SERVICE_NAME}.service

cd $(dirname "$0")
DIR=`pwd`

cat >$SYSTEMD_CONF_FILE <<EOL
[Unit]
Description=$SERVICE_NAME
After=network.target
StartLimitIntervalSec=0

[Install]
WantedBy=multi-user.target

[Service]
Type=simple
Restart=always
RestartSec=10
ExecStart=$DIR/run.sh
User=dpawlak
WorkingDirectory=$DIR
EOL

systemctl enable --now $SERVICE_NAME

