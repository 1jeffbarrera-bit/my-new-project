#!/bin/bash
# Jeffroks Drift Audit Tool
find . -type f \( -name "README.md" -o -name "config.json" \) -exec md5sum {} + | sort > .current_drift
diff .drift_baseline .current_drift > /dev/null

if [ $? -eq 0 ]; then
    echo "DRIFT_STATUS: 0% (System Consistent)"
else
    echo "DRIFT_STATUS: DETECTED"
    diff .drift_baseline .current_drift
fi
