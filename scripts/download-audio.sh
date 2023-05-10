#!/bin/bash

VIDEO_ID=$1

[ -z "$VIDEO_ID" ] && echo "ERROR: no video ID especified"

# echo "The video id is" $VIDEO_ID
yt-dlp "https://www.youtube.com/watch?v=$VIDEO_ID" --format m4a -o "./tmp/%{id}s.%(ext)s" 2>&1


# curl https://api.openai.com/v1/models \
#   -H "Authorization: Bearer $OPENAI_API_KEY" \