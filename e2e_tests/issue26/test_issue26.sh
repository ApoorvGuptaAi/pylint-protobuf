#!/bin/sh

set -e

here=$(dirname "$0")
OUT=$(mktemp)
cleanup() {
	rm "$OUT"
}
trap cleanup EXIT

pylint --load-plugins=pylint_protobuf "${here}/issue26_example.py" | tee "$OUT"

grep -q F0001 "$OUT" && echo FAIL && exit 1  # missing file
grep -q E1101 "$OUT" && echo FAIL && exit 1  # no-member
echo PASS && exit 0
