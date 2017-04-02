FROM adamant/amp-base

USER root

RUN apt-get update -qq \
 && apt-get install -qqy --no-install-recommends lib32gcc1 \
 && apt-get clean \
 && rm -rf /var/lib/apt /tmp/* /var/tmp/*

USER AMP

ENV MODULE=ARK EXTRAS="+ARKModule.Network.GamePort 7777 +ARKModule.Network.IPBinding 0.0.0.0 +ARKModule.Server.PlayerLimit 12 +ARKModule.Network.QueryPort 27015 +ARKModule.Network.RCONPort 32330"

EXPOSE 8080 7777 27015 32330
