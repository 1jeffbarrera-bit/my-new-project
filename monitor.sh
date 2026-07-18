#!/bin/bash
while true; do
    count=$(ls -1 .comm_buffer/pending_review/ 2>/dev/null | wc -l)
    echo -e "\n--- COCKPIT STATUS: $count tasks pending ---"
    sleep 5
done
