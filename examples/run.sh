#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_edit_pipeline info
PYTHONPATH=src python -m gbt_edit_pipeline check --payload '{}'
PYTHONPATH=src python -m gbt_edit_pipeline run   --payload '{}'
