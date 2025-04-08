FROM alpine:3.18

RUN apk add --no-cache python3 py3-pip bash jq git \
  && pip uninstall -y modbus2mqtt || true \
  && pip install --no-cache-dir git+https://github.com/daniel-sanders/modbus2mqtt.git

COPY run.sh /run.sh
COPY config_template.yaml /config_template.yaml
RUN chmod +x /run.sh

CMD ["/run.sh"]
