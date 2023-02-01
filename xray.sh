#!/bin/sh
if [ ! -f UUID ]; then
  UUID="53f37924-8db8-42c8-b3ae-a42d44e84e7a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

