# Waits for 5 seconds and then runs a cURL command
echo "Waiting for 5 seconds..."
sleep 5

echo "Attempting to upload projection..."
/usr/bin/curl "http://eventstore:2113/projections/continuous?name=cricd-matches&emit=yes&checkpoints=yes&enabled=yes" \
    -i -d @matchesProjection.js \
    --user admin:changeit \
    -H "Content-Type: application/json;charset=UTF-8"

echo "Upload script complete"
