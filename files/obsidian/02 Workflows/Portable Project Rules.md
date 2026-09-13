---
title: Portable Project Rules
tags:
  - safedealz
  - workflow/portability
---

# Portable project rules

The project must work after copying or cloning the `safeDealz` folder to another computer.

## Root discovery

The SafeDealz root is the nearest common parent containing these four folders:

- `backend`
- `flutter`
- `files`
- `react`

Commands and documentation start from that root. They must never assume its parent directory or operating-system username.

## Allowed path forms

- Repository-relative paths: `backend/openapi/openapi.json`
- Vault-relative links: `[[01 Memory/Current State]]`
- Relative Markdown links: `[Plan](../../plan.md)`

## Forbidden path forms

- Operating-system user-home paths
- Drive-qualified paths
- Root-qualified project paths
- Editor-specific absolute file URLs

## Moving to another computer

1. Copy or clone the complete `safeDealz` folder.
2. Open Obsidian and choose **Open folder as vault**.
3. Select `safeDealz/files/obsidian`.
4. Open [[Home]].
5. Install platform SDKs and dependencies from the project guides; do not edit paths in the vault.

Obsidian's machine-specific workspace files are ignored. The portable vault configuration, bookmarks, templates, and memory notes move with the project.
