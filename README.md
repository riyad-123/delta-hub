# Delta Hub

Public distribution repository for the Delta Hub Luau launcher.

## Files

- `delta.luau` — obfuscated launcher hosted for distribution
- `github-loader.luau` — loader that fetches `delta.luau`
- `run.luau` — ready-to-run one-line loader

The editable source and obfuscation tool are intentionally kept out of this public repository.

## Run

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/riyad-123/delta-hub/main/delta.luau"))()
```
