---
to: monitoring/route-alertmanager.yaml
---
apiVersion: route.openshift.io/v1
kind: Route
metadata:
  name: alertmanager
  namespace: <%= name.toLowerCase() %>
spec:
  host: alertmanager-<%= name.toLowerCase() %>.127.0.0.1.nip.io
  port:
    targetPort: alertmanager
  to:
    kind: Service
    name: alertmanager
    weight: 100
  wildcardPolicy: None
