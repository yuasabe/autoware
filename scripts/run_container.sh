#!/bin/bash

rocker --nvidia --x11 --user --privileged --network host --volume $HOME/workspace/autoware_docker --volume $HOME/data/maps -- ghcr.io/autowarefoundation/autoware-universe:humble-latest-cuda
