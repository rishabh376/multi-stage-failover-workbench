# Changelog

All notable changes. Conventional Commits.

## 0.1.0 - Initial

Multi-Stage Failover Workbench

- feat: initial sre service - Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production.
- feat: prometheus metrics, health/ready probes
- feat: helm chart, k8s manifests, terraform with HPA
- security: trivy scan, non-root, readOnlyRootFilesystem
- docs: architecture, runbook, DR plan, interview pack
