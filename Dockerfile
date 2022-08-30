ARG TRIVY_BASE_IMAGE=ghcr.io/aquasecurity/trivy:0.31.2
FROM ${TRIVY_BASE_IMAGE}
COPY entrypoint.sh /
RUN apk --no-cache add bash curl
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
