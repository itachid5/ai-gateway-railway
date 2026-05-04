#!/bin/sh
set -e

mkdir -p /app/data /app/config

cat > /app/data/local.yaml <<EOF
server:
  host: 0.0.0.0
  port: ${PORT:-8080}
  proxy_api_key: "${PROXY_API_KEY}"
EOF

echo "Codex Proxy local.yaml written. Starting app..."

if [ "$#" -gt 0 ]; then
  exec "$@"
else
  exec npm start
fi
