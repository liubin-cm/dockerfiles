from registry.cn-hangzhou.aliyuncs.com/youfu/halyard:1.3.1
USER root
RUN apt-get update 
RUN apt-get install -y gcc
RUN curl -fsSL https://github.com/rofl0r/proxychains-ng/archive/v4.13.tar.gz | tar xzf - -C /usr/share \
    && mvn /usr/share/proxychains-ng-4.13 /usr/share/proxychains && cd /usr/share/proxychains \
    && ./configure && make && make install && make install-config
USER spinnaker
