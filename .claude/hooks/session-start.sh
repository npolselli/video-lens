#!/bin/bash
# Install the video-lens skill's Python dependencies in Claude Code on the web sessions.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:-.}"
python3 -m pip install --quiet --disable-pip-version-check --root-user-action=ignore -r requirements.txt
