# antigravity-auth

This plugin is a local port of
`yetone/alma-plugins/plugins/antigravity-auth`.

## Importing upstream source

Use the helper script to pull the upstream plugin files into this directory:

```bash
./scripts/import-antigravity-auth.sh
```

> **Note**
> Access to GitHub is blocked in this environment, so the import script cannot
> run here. Execute it in an environment that can reach GitHub, then commit the
> imported files.

## Configuration

Document the configuration required by the upstream plugin here after import.
Common items for auth plugins include:

- `ANTIGRAVITY_CLIENT_ID`
- `ANTIGRAVITY_CLIENT_SECRET`
- `ANTIGRAVITY_REDIRECT_URI`
- `ANTIGRAVITY_AUTH_URL`
- `ANTIGRAVITY_TOKEN_URL`

When you import the upstream code, confirm the exact environment variables and
update this list.

## Usage

Describe how to enable the plugin in this repo once the source files are
present. Ensure the plugin is registered in `plugins/registry.json`.
