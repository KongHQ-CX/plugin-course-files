FROM kong/kong-gateway:3.7

USER root

COPY --chown=1000:1000 handler.lua /usr/local/share/lua/5.1/kong/plugins/myplugin/handler.lua
COPY --chown=1000:1000 schema.lua /usr/local/share/lua/5.1/kong/plugins/myplugin/schema.lua
RUN sed '20 a "myplugin",' /usr/local/share/lua/5.1/kong/constants.lua > /usr/local/share/lua/5.1/kong/constants.lua.patch && \
    mv /usr/local/share/lua/5.1/kong/constants.lua.patch /usr/local/share/lua/5.1/kong/constants.lua

USER kong
