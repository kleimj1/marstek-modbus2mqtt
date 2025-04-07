FROM alpine:3.18

# Installiere benötigte Tools
RUN apk add --no-cache python3 py3-pip bash jq \
  && pip install modbus2mqtt

# Kopiere Skripte + Konfiguration
COPY run.sh /run.sh
COPY config_template.yaml /config_template.yaml

RUN chmod +x /run.sh

CMD ["/run.sh"]
