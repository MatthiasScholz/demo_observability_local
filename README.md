# Demo: Local Observability Stack

Local setup of an observability stack using and fully integrating:

- Grafana: UI
- Prometheus: Metrics
- Loki: Logging
- Jaeger: Tracing
- [ ] Tempo: Tracing

## Prerequisites

- Docker Daemon with integrated Docker Compose (>=20.10.8)

## Usage

```bash
# Starting all services to spin up the complete observability stack
make up
make open-ui
make down
```

## Setup

```bash
# Install Docker Logging Driver into your local Docker setup
make setup-loki
```

## Tasks

- [ ] Connect traces with logs
- [ ] Connect traces with metrics
- [ ] Integrate Grafana Tempo
- [ ] Generate some load
- [ ] Describe ui acess
