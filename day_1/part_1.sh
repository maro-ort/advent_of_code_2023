#!/bin/bash
cat './input' \
  | tr -d -c '0-9\n' \
  | awk '{print substr($0, 1, 1) substr($0, length, 1)}' \
  | awk '{sum += $0} END {print sum}'
