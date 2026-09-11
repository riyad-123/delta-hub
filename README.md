# Delta Hub

Delta Hub is a Luau script for Blox Fruits with Delta Dynamics branding.

## Current branding

- Window title: `Delta Hub : Blox Fruit`
- Theme: black and purple
- Community invite: `https://discord.gg/deltadynamics`
- Community description: Welcome to Delta Dynamics! Are you a fan of Delta Executor? Join us to chat with fellow users, get the latest news, updates, and stay informed about Delta.

## Source

The editable source is in `deltahub/source.luau`. The public distribution file is `deltahub/main.luau`.

The script loads its UI library at runtime, so it is intended to be run in a Luau-capable Roblox environment rather than through the TypeScript workspace commands.

## Protected launcher

`deltahub/main.luau` is the generated obfuscated launcher for distribution. It splits and shuffles an encoded copy of `source.luau`, then decodes it only in memory at runtime.

`deltahub/github-loader.luau` is a small launcher for fetching `main.luau` from the GitHub raw URL.

`deltahub/run.luau` is the ready-to-run one-line loader for users.

After editing `source.luau`, regenerate the public launcher with:

```bash
node deltahub/obfuscate.mjs
```

This protects against casual copying, not determined reverse engineering. For real per-user access control, add server-side license validation rather than relying on client-side obfuscation alone.