#!/bin/sh

here=$(dirname "$0")
find "$here" -mindepth 2 -name 'test_*.sh' -exec sh -c "echo -n '{}\t'; {} | grep -E '^PASS|^FAIL'" \;
