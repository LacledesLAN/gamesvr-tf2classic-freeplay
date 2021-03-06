# escape=`
FROM lacledeslan/gamesvr-tf2classic

HEALTHCHECK NONE

ARG BUILDNODE=unspecified
ARG SOURCE_COMMIT=unspecified

LABEL maintainer="Laclede's LAN <contact @lacledeslan.com>" `
      com.lacledeslan.build-node=$BUILDNODE `
      org.label-schema.schema-version="1.0" `
      org.label-schema.url="https://github.com/LacledesLAN/README.1ST" `
      org.label-schema.vcs-ref=$SOURCE_COMMIT `
      org.label-schema.vendor="Laclede's LAN" `
      org.label-schema.description="LL Team Fortress 2 Classic Freeplay Server" `
      org.label-schema.vcs-url="https://github.com/LacledesLAN/gamesvr-tf2classic-freeplay"

# `RUN true` lines are work around for https://github.com/moby/moby/issues/36573
COPY --chown=TF2Classic:root ./sourcemod-linux /app/tf2classic/
RUN true
COPY --chown=TF2Classic:root ./sourcemod-configs /app/tf2classic/
RUN true
COPY --chown=TF2Classic:root ./dist /app/
RUN true
COPY --chown=TF2Classic:root ./ll-tests /app/ll-tests

# UPDATE USERNAME & ensure permissions
RUN usermod -l TF2ClassicFreeplay TF2Classic &&`
    chmod +x /app/ll-tests/*.sh &&`
    mkdir -p /app/tf2classic/logs &&`
    chmod 774 /app/tf2classic/logs

USER TF2ClassicFreeplay

WORKDIR /app/

CMD ["/bin/bash"]

ONBUILD USER root
