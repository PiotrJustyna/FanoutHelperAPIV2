# readme

Fanout Helper API V1 - this API serves as a sub-service of https://github.com/PiotrJustyna/FanoutAPIV1 and is one of `FanoutAPIV1`'s fanout data sources. This API is also relatively task-heavy.

## usage

1. To run the API in docker, execute: `run-api-docker.sh`.
2. Since `FanoutAPIV1` is going to call this service, for the sake of simplicity, use `FanoutAPIV1`'s load test script to test this service indirectly.