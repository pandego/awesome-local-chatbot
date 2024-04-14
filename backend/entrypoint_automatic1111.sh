#!/bin/bash

# Execute webui.sh script. Handle the potential need to run this more than once gracefully
# bash webui.sh || true

# Install the insightface package
# pip install insightface
pip install xtransformers

# Execute the webui.sh script again
echo "👉 Starting the server 👈"
bash webui.sh