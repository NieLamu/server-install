#!/bin/bash

# https://github.com/haoel/haoel.github.io#104-cloudflare-warp-%E5%8E%9F%E7%94%9F-ip
# https://pkg.cloudflareclient.com/

# Add cloudflare gpg key
curl https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg
# Add this repo to your apt repositories
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ bookworm main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list
# Install
sudo apt-get update && sudo apt-get install cloudflare-warp -y

warp-cli register
warp-cli set-mode proxy
warp-cli enable-always-on
warp-cli connect
warp-cli status
echo "success"

# cat /var/lib/cloudflare-warp/reg.json
# warp-cli settings
# systemctl status warp-svc
# curl -x "socks5://127.0.0.1:40000" ipinfo.io
