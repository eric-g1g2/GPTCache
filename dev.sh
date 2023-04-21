#!/bin/sh

export RUST_BACKTRACE=1
export RUST_LOG=info
export SERVICE_ACCOUNT=./service-account.json
#export GOOGLE_APPLICATION_CREDENTIALS=$HOME/.config/gcloud/application_default_credentials.json
export CORE_DATABASE_URI='postgres://postgres:admin@localhost:5433/lust'
export QDRANT_API_KEY=bLWouXqIgxwt8VXAh6ewyFy5trMwZw7gah2gWi8pGdv3E7DBhGMDPQ
export QDRANT_URL=https://da47386e-4ecd-4207-a1dd-b6b7a98b19d4.us-east-1-0.aws.cloud.qdrant.io:6334
export LUST_DATA_SOURCES_BUCKET=lustai
export LUST_REGISTRY_SECRET=12345678
export LUST_FRONT_API=http://localhost:3000

# those key will override the ones in the database
# cj's key
export OPENAI_API_KEY=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
# corp
export COHERE_API_KEY=85yLUK5jM3LJHZYTXLNmgMl4OCSp3uFmwYfuCgIc
export SERPER_API_KEY=3dd33d19688064f567f211b89fb2cda5a132b951
export SERP_API_KEY=1c4de211c873cccce36ef359729fdfd699d23728c47179e0af8a5f0d5f46c0ea
export BROWSERLESS_API_KEY=726996cf-709f-4903-b31e-94fe0ad63849

python gptcache_server/server.py
