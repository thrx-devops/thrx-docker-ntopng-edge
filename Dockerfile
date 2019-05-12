FROM ubuntu:18.04
MAINTAINER ntop.org

RUN apt-get update && \
    apt-get -y -q install wget lsb-release gnupg && \
    wget -q http://apt.ntop.org/18.04/all/apt-ntop.deb && \
    dpkg -i apt-ntop.deb && \
    apt-get clean all

RUN apt-get update && \
    apt-get -y install nedge \
    --fix-missing

#RUN echo '#!/bin/bash\n/etc/init.d/redis-server start\nntopng "$@"' > /run.sh && \
#    chmod +x /run.sh

RUN echo '#!/bin/bash\nnedge "$@"' > /run.sh && \
    chmod +x /run.sh

EXPOSE 3000

ENTRYPOINT ["/run.sh"]
