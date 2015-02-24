#!/bin/sh

echo 'import ObjectiveC.runtime'|xcrun swift 2>&1|grep -q 'Error'
