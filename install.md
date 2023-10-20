# Across the Great Wall we can reach every corner of the world

## get cert with cloudflare or acme.sh

## install the infras:

```bash
bash <(wget -qO- https://raw.githubusercontent.com/NieLamu/server-install/dev/base/docker-install.sh)
bash <(wget -qO- https://raw.githubusercontent.com/NieLamu/server-install/dev/base/nginx-install.sh)
bash <(wget -qO- https://raw.githubusercontent.com/NieLamu/server-install/dev/base/warp-cli-install.sh)
```
```bash
bash <(wget -qO- https://raw.githubusercontent.com/NieLamu/server-install/dev/base/bbr-install.sh)
```

## get the env file:

```bash
wget -N https://raw.githubusercontent.com/NieLamu/server-install/dev/config/env.sh
```
>[my private config](https://github.com/NieLamu/dotfiles/tree/dev)

modify the env file, and then:
```bash
. env.sh
```

## run the magic scrips

use docker compose
```bash
bash <(wget -qO- https://raw.githubusercontent.com/NieLamu/server-install/dev/docker-compose/install-with-docker-compose.sh)
```
clear containers
```bash
. env.sh && sudo -E docker compose down
```


or use docker directly:
```bash
bash <(wget -qO- https://raw.githubusercontent.com/NieLamu/server-install/dev/docker/gost-warp-install.sh)
bash <(wget -qO- https://raw.githubusercontent.com/NieLamu/server-install/dev/docker/ss-libev-install.sh)
bash <(wget -qO- https://raw.githubusercontent.com/NieLamu/server-install/dev/docker/trojan-go-install.sh)
```

