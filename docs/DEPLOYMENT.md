# Deployment - multi-stage-failover-workbench

**Use case:** Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production.

## Infra requirements
→ `terraform/INFRA_REQUIREMENTS.md` - CPU/RAM/storage/network/cost breakdown

## GitOps
Flux watches `main` and reconciles changes automatically.

## Rollback
```
./scripts/rollback.sh
kubectl rollout undo deploy/multi-stage-failover-workbench -n multi-stage-failover-workbench
```
Usually < 30 sec.

## Cost
AWS Free Tier - $0/mo

Reliability and safety go hand-in-hand: SLO guardrails, incident runbooks, and control-plane failure mode analysis.
