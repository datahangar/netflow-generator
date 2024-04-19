#### Base Image: Debian 12 (Bookworm)
FROM debian:bookworm-slim as builder

RUN apt-get update && apt-get -y install gcc make
COPY * /tmp/
RUN cd tmp && make && ls -la

FROM debian:bookworm-slim
COPY --from=builder /tmp/flowgen /usr/bin/
ENTRYPOINT ["/usr/bin/flowgen"]
