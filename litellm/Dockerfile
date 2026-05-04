FROM ghcr.io/berriai/litellm-database:main-latest

WORKDIR /app
COPY config.yaml /app/config.yaml

CMD ["sh", "-c", "litellm --config /app/config.yaml --host 0.0.0.0 --port ${PORT:-4000}"]
