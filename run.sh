#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
JMETER_VERSION=${JMETER_VERSION:-5.4}
IMAGE="justb4/jmeter:${JMETER_VERSION}"
BUILD_DIR=build

rm -rf ${BUILD_DIR}

# run, network is the same as created by docker-compose
docker run --network=influxdb_jmeter_network --rm \
  --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} \
  -l ${BUILD_DIR}/test-plan.jtl -e -o ${BUILD_DIR} $@
