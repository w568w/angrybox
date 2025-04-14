FROM alpine:edge
RUN \
  apk update && \
  apk upgrade && \
  apk add --no-cache \
	clang \
	clang-static \
	binutils \
	make \
	cmake \
	bash \
	git \
	linux-headers \
	wget \
	automake \
	autoconf \
	&& \
  rm -rf /var/cache/apk/*