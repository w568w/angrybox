FROM alpine:edge
RUN \
  apk update && \
  apk upgrade && \
  apk add --no-cache \
	clang \
	clang-static \
	libc++-dev \
	libc++-static \
	lld \
	binutils \
	make \
	cmake \
	bash \
	git \
	linux-headers \
	wget \
	automake \
	autoconf \
	python3 \
	pkgconf \
	unzip \
	dpkg \
	&& \
  rm -rf /var/cache/apk/*