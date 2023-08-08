#!/bin/bash

open_windows=$(eww windows | grep '^\*' | awk '$1 != "*bar" {print substr($1, 2)}')

echo $open_windows
