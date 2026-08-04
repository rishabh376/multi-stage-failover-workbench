# multi-stage-failover-workbench

> Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production.

**Domain:** sre | **Complexity:** expert | **Stack:** Go, Prometheus, Thanos, Chaos Mesh, Litmus, Multi-region, OTel

| | |
|---|---|
| Use case | Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production. |
| Pain point | Teams discover runbooks are stale during the incident, not before it. |
| Success metric | Warn 30 minutes before projected budget exhaustion and auto-freeze risky deploys. |
| Cost | $0/mo on AWS Free Tier |

## Why this exists

Teams discover runbooks are stale during the incident, not before it.. Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production.

> This production platform is designed for reliability, error budgets, and repeatable recovery drills. For this implementation, the service is designed to remove the operational friction behind Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production..

## What this product does

This project ships a production-oriented service that exposes health, readiness, observability, and domain-specific endpoints for Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production.. The implementation is intended to be deployed behind Kubernetes with secure defaults, CI validation, and rollback-ready manifests.

## Quick start

```bash
docker build -t multi-stage-failover-workbench:local .
docker run -p 8080:8080 multi-stage-failover-workbench:local
curl http://localhost:8080/healthz
```

## Architecture

```
GitHub CI -> Container Registry -> Kubernetes -> Go -> Operators / SRE
```

See `docs/ARCHITECTURE.md`

## Infrastructure

Full spec: `terraform/INFRA_REQUIREMENTS.md`

TL;DR: K8s cluster, 2-10 pods HPA, $0 on AWS Free Tier

## Docs

- `docs/ARCHITECTURE.md` - components, tradeoffs
- `docs/DESIGN_DISCUSSION.md` - how we decided to build this
- `docs/DEPLOYMENT.md` - GitOps, rollback
- `docs/SECURITY.md` - threat model
- `docs/TROUBLESHOOTING.md` - 3am runbook
- `terraform/INFRA_REQUIREMENTS.md` - **infra: CPU/RAM/storage/cost**

Interview prep: `interview/`
