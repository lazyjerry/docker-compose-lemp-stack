#!/bin/bash

docker ps | awk 'NR>1 {print $NF}'| xargs docker stats