#!/bin/sh

case "$1" in
 -* | "")
  args=""

  [ -n "$DOMAIN" ] && args="--domain $DOMAIN"
  [ -n "$PORT" ] && args="$args --port $PORT"

  exec node -r esm ./bin/server "$@" $args
 ;;
esac

exec "$@" $args
