#!/bin/bash

cd $(dirname "$0")

echo "Starting mkdocs server on http://localhost:2212"
. .venv/bin/activate
mkdocs serve --dev-addr localhost:2212