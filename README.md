# docker influxdb v2.0

Analytics & Monitoring software bundled up into convenient docker containers.

## What it contains ?
- InfluxDB
  - Provisioned with a Jmeter Dashboard. See: **influxdb** directory.
- Grafana
- Jmeter Test Plan which push data directly to InfluxDB. See: **test/influxdb.test.plan.jmx**

## API & Web UI details:
- http://127.0.0.1:8086/ - InfluxDB API end-point.
- http://127.0.0.1:3000/ – Grafana Web UI.

## How to use it:
- First clone this repo.
- Switch to the repo folder.
- Use command ```docker-compose up -d``` to start containers in background.

## Run Jmeter
Ensure that the network names created by *docker-compose* match that one used in the `run.sh` script. Then use the script in teh same way you would use the jmeter cli tool: `./run.sh -n -t test/influxdb.test.plan.jmx`.
