# FAQ - multi-stage-failover-workbench

**Q: What problem does this actually solve?**
A: Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production.

Pain point: Teams discover runbooks are stale during the incident, not before it.

**Q: Free to run?**
A: Yep. AWS Free Tier - $0/mo. See `terraform/INFRA_REQUIREMENTS.md`

**Q: Production ready?**
A: Yes - SLOs, security hardening, DR runbook, Helm, Terraform, monitoring.

**Q: Stack?**
A: Go, Prometheus, Thanos, Chaos Mesh, Litmus, Multi-region, OTel

**Q: What infra do I need?**
A: `terraform/INFRA_REQUIREMENTS.md` has the full breakdown - CPU/RAM/storage/network/cost.
