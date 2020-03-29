#!/bin/bash

lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} usermod -L {}
