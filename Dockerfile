FROM debian:bookworm-slim

# 1. Устанавливаем Tor (из стандартного репозитория Debian) и утилиты
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates wget gnupg apt-transport-https gosu \
    tor \
    && rm -rf /var/lib/apt/lists/*

# 2. Скачиваем и устанавливаем lyrebird из пула Debian (версия для amd64)
# Используем deb.debian.org, так как deb.torproject.org заблокирован
RUN wget -4 --timeout=60 --tries=3 -O /tmp/lyrebird.deb \
    http://deb.debian.org/debian/pool/main/l/lyrebird/lyrebird_0.8.1-1+b1_amd64.deb \
    && dpkg -i /tmp/lyrebird.deb \
    && rm /tmp/lyrebird.deb

RUN useradd -m -s /bin/false tor

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 9050 9053

ENTRYPOINT ["/entrypoint.sh"]
