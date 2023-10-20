#!/bin/bash

# gost-warp, ss-libev, trojan-go
# export CERT_DIR=~/.acme.sh/*.xxxxxx.xyz_ecc
# export CERT_FILE=$CERT_DIR/fullchain.cer
# export KEY_FILE=$CERT_DIR/*.xxxxxx.xyz.key
export CERT_DIR=~/cert/*.xxxxxx.xyz
export CERT_FILE=$CERT_DIR/*.xxxxxx.xyz.pem
export KEY_FILE=$CERT_DIR/*.xxxxxx.xyz.key

# gost-warp, ss-libev, trojan-go
export USERNAME=youruser
export PASSWORD=yourpassword

# gost-warp, trojan-go
export WS_PATH=/yourpath

############### port
# referrer: https://developers.cloudflare.com/fundamentals/reference/network-ports/
export GOST_WARP_PORT=yourport
export SS_LIBEV_PORT=yourport
export TROJAN_GO_PORT=yourport

############### config
export SS_LIBEV_CONFIG_PATH=/etc/shadowsocks-libev
export TROJAN_GO_CONFIG_PATH=/etc/trojan-go


