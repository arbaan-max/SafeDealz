---
title: Obsidian Agent Memory Rules
tags:
  - safedealz
  - agent/instructions
---

# Obsidian agent memory rules

1. Resolve the SafeDealz root by locating the common parent containing `backend`, `flutter`, `files`, and `react`.
2. Never save an operating-system home path, drive-qualified path, file URL, or other absolute project path in vault notes, scripts, configuration, plans, or generated memory.
3. Begin with [[Home]] and [[01 Memory/Current State]], then follow the canonical [start workflow](../start.md).
4. Treat [implementation.md](../implementation.md), the active task, [decisions.md](../decisions.md), and tested code as authoritative. Vault summaries must link to those sources rather than copy large sections.
5. After each implementation or partial handoff, update [[01 Memory/Current State]] and append a concise entry to [[01 Memory/Session Log]]. Also update the canonical files required by [start.md](../start.md).
6. Record durable context in [[01 Memory/Project Memory]]. Record confirmed product or architecture decisions in [decisions.md](../decisions.md) first.
7. Use vault-relative wikilinks for vault notes and relative Markdown links for canonical files outside this vault.
8. Never store passwords, access tokens, refresh tokens, private keys, customer KYC, bank information, or production secrets in this vault.
9. Treat each completed phase as an automatic stop unless the owner explicitly authorized an inclusive phase range. Stop after the final named phase or task and record the next action without starting it.
