# Termux Current State

This document records the currently recovered Android + Termux workstation environment.

The objective was not to rebuild the smallest possible setup.

The objective was to preserve enough runtime evidence, startup behavior, and operational traces to reconstruct the workstation later if the device or environment becomes unavailable.

This environment was also used as part of a mobile AI-assisted coding workflow involving:

- Termux
- Gemini CLI
- GitHub
- Vercel deployment
- Android-based remote desktop interaction

# Confirmed runtime state

The following components were confirmed to be operational during recovery:

- Termux shell environment
- Git push / remote repository workflow
- Python runtime
- Node.js / npm runtime
- workspace structure under ~/workbox
- VNC-based desktop access
- Xfce4 runtime traces

# Preserved recovery evidence

Artifacts were intentionally preserved for future recovery and runtime archaeology.

Saved evidence includes:

- installed package snapshots
- runtime version snapshots
- backup archive indexes
- shell history snapshots
- VNC startup scripts
- Xfce4 runtime traces
- keyboard/input recovery clues

See artifacts/ and docs/ for detailed recovery traces.

# Recovery philosophy

The recovery process prioritized:

1. reproducibility
2. operational continuity
3. lightweight mobile tooling
4. preservation of runtime behavior
5. future rebuild capability
6. AI-assisted workflow continuity

