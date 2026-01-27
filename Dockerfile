FROM eceasy/cli-proxy-api:latest

# Persist management UI downloads and auth tokens outside the image
ENV MANAGEMENT_STATIC_PATH=/CLIProxyAPI/static

VOLUME ["/CLIProxyAPI/static", "/root/.cli-proxy-api"]

EXPOSE 8317

# Use the packaged binary; expects config at /CLIProxyAPI/config.yaml (mount or bake it)
CMD ["/CLIProxyAPI/cli-proxy-api", "--config", "/CLIProxyAPI/config.yaml"]
