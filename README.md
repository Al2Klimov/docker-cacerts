# /etc/ssl/certs provider

Usage:

```Dockerfile
FROM scratch
COPY --from=grandmaster/cacerts /etc/ssl/certs /etc/ssl/certs
```
