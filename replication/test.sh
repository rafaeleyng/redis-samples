#!/usr/bin/env bash
set -euo pipefail

# setup
. ../assert.sh
make down
make up && sleep 10
echo

# variables
MASTER_NAME='redis1'
MASTER_IP='172.22.1.10'
REPLICA_NAME='redis2'
REPLICA_IP='172.22.1.20'

# test suite 1
## cannot write to replica
assert "docker exec -t replication_${REPLICA_NAME}_1 redis-cli set 'foo' 123" "(error) READONLY You can't write against a read only replica.\r"
## can write to master
assert "docker exec -t replication_${MASTER_NAME}_1 redis-cli set 'foo' 123" "OK\r"
## can read from replica what got written to master
assert "docker exec -t replication_${REPLICA_NAME}_1 redis-cli get 'foo'" "\"123\"\r"

assert_end '"only write to master"'
echo
