FROM adamant/amp

USER root

RUN ln -s /bin/sh /bin/bash

USER amp

ENV MODULE=ARK EXTRAS="+ARKModule.Network.GamePort 7777 +ARKModule.Network.IPBinding 0.0.0.0 +ARKModule.Server.PlayerLimit 12 +ARKModule.Network.QueryPort 27015 +ARKModule.Network.RCONPort 32330"

EXPOSE 8080 7777 27015 32330
