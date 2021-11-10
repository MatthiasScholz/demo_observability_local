up:
	docker compose --file docker-compose.yml up -d

down:
	docker compose --file docker-compose.yml down

restart: down up

setup-loki:
	docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

open-ui: ui-tracing ui-logging-state ui-dashboard

ui-tracing:
	open http://$(host):16686

ui-logging-state:
	open http://$(host):3100/metrics

ui-dashboard:
	open http://$(host):3000
