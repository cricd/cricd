
############################################################
# Dockerfile that starts cricd projections on EventStore
############################################################

FROM alpine
MAINTAINER Bradley Scott

# Download cURL
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

# Move the projections file to the container
COPY matchesProjection.js /
COPY bowlersProjection.js /

# Create projections using the Eventstore RESTapi
CMD /bin/sh -c "echo 'Waiting for 30 seconds...'; \
  sleep 30; \
  echo 'Attempting to upload matches projection...'; \
  /usr/bin/curl 'http://eventstore:2113/projections/continuous?name=cricd-matches&emit=yes&checkpoints=yes&enabled=yes' \
    -i -d @matchesProjection.js \
    --user admin:changeit \
    -H 'Content-Type: application/json;charset=UTF-8'; \
  echo 'Upload of matches projection complete';"
