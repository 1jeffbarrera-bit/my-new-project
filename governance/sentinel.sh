#!/bin/bash
echo "Monitoring System Integrity..."
md5sum -c .golden_state.md5 > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "DRIFT DETECTED: Reverting to Golden State..."
    git checkout .
fi
