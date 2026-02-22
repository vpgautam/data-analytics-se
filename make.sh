#!/usr/bin/env bash
set -euo pipefail

# This script builds the lecture book. Use --publish to deploy to gh-pages.
# It runs through pyenv because jupyter-book / ghp-import are installed there.
export PYENV_VERSION="${PYENV_VERSION:-me539}"

if ! command -v pyenv >/dev/null 2>&1; then
  echo "Error: pyenv is required but was not found on PATH."
  exit 1
fi

if ! pyenv exec jupyter-book --help >/dev/null 2>&1; then
  echo "Error: jupyter-book is not available in pyenv env '${PYENV_VERSION}'."
  exit 1
fi

# This repository uses classic Jupyter Book (_config.yml / _toc.yml).
# The new mystmd jupyter-book CLI is incompatible with this format.
if pyenv exec jupyter-book --help 2>&1 | grep -q "powered by mystmd"; then
  cat <<'EOF'
Error: You are using jupyter-book v2 (mystmd CLI), but this repo needs classic Jupyter Book.

Use a Python 3.11 env with:
  pip install "jupyter-book==0.15.1" "ghp-import"

Then run:
  ./make.sh          # build only
  ./make.sh --publish
EOF
  exit 1
fi

# Make it
pyenv exec jupyter-book build lecturebook --all

if [[ "${1:-}" == "--publish" ]]; then
  if ! pyenv exec ghp-import --help >/dev/null 2>&1; then
    echo "Error: ghp-import is not available in pyenv env '${PYENV_VERSION}'."
    exit 1
  fi
  if [[ ! -d lecturebook/_build/html ]]; then
    echo "Error: build output lecturebook/_build/html was not found."
    exit 1
  fi
  pyenv exec ghp-import -n -p -f lecturebook/_build/html
fi
