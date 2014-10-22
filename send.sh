#! /bin/bash

if [ $# -ne 3 ]; then
    echo "引数が3つ必要"
    echo "send.sh <名前> <x座標: int> <y座標: int>"
    exit 1
fi

JSON=$(echo -e {\"x\": $2, \"y\": $3})

curl -X POST -d "$JSON" https://fiery-fire-5323.firebaseio.com/$1.json

