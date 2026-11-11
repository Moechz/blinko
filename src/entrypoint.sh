#!/bin/sh
# TOS wrapper: Blinko requires NEXTAUTH_SECRET, but a hard-coded secret in the
# compose file is forbidden. Generate one on first start and keep it in the
# data volume so restarts keep sessions valid.
set -u
set -e
mkdir -p /app/.blinko
SECRET_FILE=/app/.blinko/.nextauth_secret
if [ ! -s "$SECRET_FILE" ]; then
  head -c 48 /dev/urandom | od -An -tx1 | tr -d ' \n' > "$SECRET_FILE"
fi
export NEXTAUTH_SECRET="$(cat "$SECRET_FILE")"
cd /app
exec /bin/sh ./start.sh
