#!/bin/bash

yarn openapi-typescript https://raw.githubusercontent.com/aserto-dev/openapi-decision-logs/${OPENAPI_SHA}/publish/decision-logs/openapi.json --output ./generated/decision-logs.ts
