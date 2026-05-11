# Known Working Configurations

Several files appear to have been intentionally preserved as known-working runtime configurations.

## Important files

- ~/.bashrc.vnc.working
- ~/.vnc/xstartup.working
- ~/.vnc/xstartup.korean.working

## Interpretation

These files appear to represent previously validated working states of the Android + Termux + Xfce4 + VNC environment.

The presence of multiple variants suggests that keyboard/input or Korean-language compatibility may have required separate tuning.

## Recovery guidance

Before rebuilding configuration from scratch:

1. Inspect preserved *.working files
2. Compare against current runtime behavior
3. Prefer restoring known-good states over re-tuning manually

## Archaeology note

The exact tuning commands were not fully preserved in shell history.

However, working configuration snapshots survived and are likely more valuable than individual setup commands.
