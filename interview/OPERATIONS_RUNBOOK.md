# Operations Runbook - multi-stage-failover-workbench

Sre Teams use the service to validate failover readiness across multi-region services, so runbooks prove they still match production.

**On-call? Read this first.**

## Deploy
```
kubectl apply -k k8s/ -n multi-stage-failover-workbench
kubectl rollout status deploy/multi-stage-failover-workbench -n multi-stage-failover-workbench
```

## Rollback (when things go red)
```
./scripts/rollback.sh
# usually < 30sec
```

## Scale up NOW
```
kubectl scale deploy/multi-stage-failover-workbench --replicas=10 -n multi-stage-failover-workbench
```

## Logs
```
kubectl logs -l app=multi-stage-failover-workbench -n multi-stage-failover-workbench -f --tail=200
```

## Crashloop?
```
kubectl describe pod -l app=multi-stage-failover-workbench -n multi-stage-failover-workbench
kubectl logs <pod> --previous -n multi-stage-failover-workbench
```
90% of the time: missing env var in ConfigMap.

## Metrics
`curl localhost:8080/metrics` or Grafana dashboard in `monitoring/`

## DR / Failover
See `docs/DISASTER_RECOVERY.md` - RTO 15m

We actually tested this. 11 min.
