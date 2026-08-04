#!/usr/bin/env bash
set -euo pipefail
kubectl rollout undo deploy/multi-stage-failover-workbench
