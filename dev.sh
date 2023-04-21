#!/bin/sh

# those key will override the ones in the database
# cj's key
export OPENAI_API_KEY=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

python gptcache_server/server.py
