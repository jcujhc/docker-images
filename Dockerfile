FROM scratch

ENV https_proxy=http://10.14.38.3:3128
ENV http_proxy=http://10.14.38.3:3128
ENV HTTP_PROXY=http://10.14.38.3:3128
ENV HTTPS_PROXY=http://10.14.38.3:3128


LABEL maintainer="jcuj"

ADD alpine-minirootfs-3.13.5-x86_64.tar.gz /

RUN apk add cmatrix sl

CMD ["/usr/bin/cmatrix"]
