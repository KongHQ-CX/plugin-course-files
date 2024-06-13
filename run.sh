#!/bin/bash

docker run -it --rm --name kong2 \
  -p 8000:8000 \
  -v $(pwd):/usr/local/share/lua/5.1/kong/plugins/myplugin \
  -v $(pwd)/kong.yaml:/etc/kong/kong.yaml \
  -e KONG_DATABASE=off \
  -e "KONG_DECLARATIVE_CONFIG=/etc/kong/kong.yaml" \
  -e KONG_PLUGINS="bundled,myplugin" \
  -e KONG_PROXY_LISTEN="0.0.0.0:8000" \
  kong:3.7
