#!/bin/bash
# Scans agent logs and builds a JSON for the dashboard
echo "[" > dashboard_data.json
ls .comm_buffer/agent_*/status.log | xargs -I {} bash -c 'echo "{\"agent\": \"$(basename $(dirname {}))\", \"status\": \"$(cat {})\"}," ' >> dashboard_data.json
echo "]" >> dashboard_data.json
