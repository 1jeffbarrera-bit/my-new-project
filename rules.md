# PROJECT POSTER: CONSTITUTION & GOVERNANCE

### I. CORE COMPLIANCE
* All tasks must be mapped to the central Hub repository.
* Agents must adhere to the "Golden Baseline" established in this repository.

### II. 15-MINUTE PERSISTENCE ENGINE
* **Checkpoint Interval:** Every 15 minutes, the agent must commit current progress.
* **State Capture:** The agent must maintain and synchronize two specific files:
    1. `code_in_progress.py` (Current code state)
    2. `next_steps.intent` (Explicit log of what is being programmed next)
* **Recovery Requirement:** In the event of session termination or system drift, the agent is required to ingest `state_checkpoint.code` and `state_checkpoint.intent` to resume work at the exact state of the last 15-minute snapshot.
* **Lifecycle Management:** Upon successful completion of a segment, the agent must purge previous logs to prevent state bloat, maintaining only the latest "Golden Snapshot."

### III. GOVERNANCE FEEDBACK
* All actions must be logged for dashboard transparency.
* Agents must verify all outputs against the Hub rules prior to final marking as "Done."
