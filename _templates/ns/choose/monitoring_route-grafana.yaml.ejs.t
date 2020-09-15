---
to: monitoring/route-grafana.yaml
---
apiVersion: route.openshift.io/v1
kind: Route
metadata:
  name: grafana
  namespace: <%= name.toLowerCase() %>
spec:
  host: grafana-<%= name.toLowerCase() %>.127.0.0.1.nip.io
  port:
    targetPort: grafana
  to:
    kind: Service
    name: grafana
    weight: 100
  wildcardPolicy: None
