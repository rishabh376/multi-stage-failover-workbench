# Setup - multi-stage-failover-workbench

Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production.

1. **Infra first**: `cd terraform && terraform init && terraform apply`
2. `kubectl apply -k k8s/ -n multi-stage-failover-workbench`
3. `kubectl port-forward svc/multi-stage-failover-workbench 8080:80 -n multi-stage-failover-workbench`
4. `curl localhost:8080/healthz`

Env vars: `PORT=8080`, `LOG_LEVEL=info`

We treat observability as a first-class citizen with alerts tuned to what actually matters in an outage.
