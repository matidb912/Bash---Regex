#!/bin/bash

IPs_filtradas=$(grep -E "(20[1-9] | 40[0-9])$" ./access.log)


