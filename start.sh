#!/bin/sh

git pull
pip install -r requirements.txt

export BOT_ID=NONE
export SLACK_BOT_TOKEN=NONE

while true; do
python radiobot/radiobot.py --noauth_local_webserver
# Note(kbostelmann): Exponential backoff
sleep 1m
done
