---
to: monitoring/route-prometheus.yaml
---
apiVersion: route.openshift.io/v1
kind: Route
metadata:
  name: prometheus
  namespace: <%= name.toLowerCase() %>
spec:
  host: prometheus-<%= name.toLowerCase() %>.127.0.0.1.nip.io
  port:
    targetPort: prometheus
  to:
    kind: Service
    name: prometheus
    weight: 100
  wildcardPolicy: None
