FROM alpine:3.18

# Installiere Python, pip, bash, jq
RUN apk add --no-cache python3 py3-pip bash jq git \
  && pip install git+https://github.com/daniel-sanders/modbus2mqtt@main


# Kopiere Startskript und Konfiguration
COPY run.sh /run.sh
COPY config_template.yaml /config_template.yaml
RUN chmod +x /run.sh

CMD ["/run.sh"]
