#!/bin/bash

DOT_MCP_JSON_PATH="$(cd $(dirname $0); pwd)/../../.mcp.json"
TARGET_LINK="$(pwd)/.mcp.json"

# Check if symbolic link already exists
if [ -L "${TARGET_LINK}" ]; then
    echo "Symbolic link already exists: ${TARGET_LINK}"
else
    ln -snfv ${DOT_MCP_JSON_PATH} ${TARGET_LINK}
fi
