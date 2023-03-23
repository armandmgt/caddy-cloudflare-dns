FROM caddy:2.6.4-builder-alpine AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare

FROM caddy:2.6.4-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy