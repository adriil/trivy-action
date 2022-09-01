FROM quay.cnqr.delivery/aquasecurity/trivy:0.31.2
COPY entrypoint.sh /
RUN apk --no-cache add bash curl
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
