---
to: hygen-create.json
---
{
  "about": "This is a hygen-create definitions file. The hygen-create utility creates generators that can be executed using hygen.",
  "hygen_create_version": "0.2.0",
  "name": "choose-ns",
  "files_and_dirs": {
    "hygen-create.json": true,
    "monitoring/prometheus.yaml": true,
    "monitoring/route-alertmanager.yaml": true,
    "monitoring/route-grafana.yaml": true,
    "monitoring/route-prometheus.yaml": true,
    "deploy-monitoring.sh": true
  },
  "templatize_using_name": "<%= name.toLowerCase() %>",
  "gen_parent_dir": false
}