#!/bin/bash
# Usage: ./save_protocol.sh "Your instruction here"
echo "{\"timestamp\": \"$(date -u)\", \"instruction\": \"$1\"}" >> governance/protocol_ledger.json
