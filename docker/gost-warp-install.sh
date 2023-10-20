#!/bin/bash

# referrer: https://github.com/haoel/haoel.github.io#34-%E7%94%A8-gost-%E8%AE%BE%E7%BD%AE-https-%E6%9C%8D%E5%8A%A1
# referrer: https://gost.run/
# referrer: https://github.com/haoel/haoel.github.io/issues/83

sudo docker run \
    -d \
    --name gost-warp \
    --network host \
    --restart=always \
    -v ${CERT_DIR}:${CERT_DIR}:ro \
    gogost/gost \
    -L "mwss://${USERNAME}:${PASSWORD}@:${GOST_WARP_PORT}?path=${WS_PATH}&certFile=${CERT_FILE}&keyFile=${KEY_FILE}" \
    -F "socks://localhost:40000"

# docker stop gost-warp && docker rm gost-warp
# docker logs gost-warp -f