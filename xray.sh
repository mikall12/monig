#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b2ef2b0b-c481-43a8-9da6-14dfa0e820cf"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

