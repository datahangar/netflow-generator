#### Base Image: Debian 12 (Bookworm)
FROM debian:bookworm-slim as builder

RUN apt-get update && apt-get -y install gcc make
COPY * /tmp/
RUN cd tmp && make && ls -la
RUN apt-get -y clean && rm -rf /var/lib/apt/lists/*

FROM debian:bookworm-slim
RUN apt-get update && apt-get -y install dnsutils && apt-get -y clean && rm -rf /var/lib/apt/lists/*
COPY --from=builder /tmp/flowgen /usr/bin/
COPY --from=builder /tmp/flowgen_wrapper.sh /usr/bin/
ENTRYPOINT ["/usr/bin/flowgen_wrapper.sh"]
