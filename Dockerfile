FROM debian:testing-slim as download
SHELL ["/bin/bash", "-exo", "pipefail", "-c"]

RUN apt-get update ;\
	DEBIAN_FRONTEND=noninteractive apt-get install --no-install-{recommends,suggests} -y \
		ca-certificates ;\
	apt-get clean ;\
	rm -vrf /var/lib/apt/lists/*


FROM scratch

COPY --from=download /etc/ssl/certs /etc/ssl/certs
