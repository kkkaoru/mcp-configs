#!/bin/bash

DOT_MCP_JSON_PATH="$(cd $(dirname $0); pwd)/../../.mcp.json"
TARGET_PATH="$(pwd)/.mcp.json"

# Check if an argument is provided
if [ $# -gt 0 ]; then
    # Copy mode: use the provided argument as the destination
    DESTINATION="$1"
    cp -v ${DOT_MCP_JSON_PATH} "${DESTINATION}"
else
    # Default mode: copy to current directory
    if [ -f "${TARGET_PATH}" ]; then
        echo "File already exists: ${TARGET_PATH}"
    else
        cp -v ${DOT_MCP_JSON_PATH} ${TARGET_PATH}
    fi
fi
