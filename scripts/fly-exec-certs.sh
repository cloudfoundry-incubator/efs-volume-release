#!/usr/bin/env bash
set -e

scripts_path=./$(dirname $0)

fly -t persi execute -c $scripts_path/ci/run_driver_cert.build.yml -i efs-volume-release-concourse-tasks=/Users/pivotal/workspace/efs-volume-release -i efs-volume-release=/Users/pivotal/workspace/efs-volume-release --privileged
