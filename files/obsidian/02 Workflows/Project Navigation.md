---
title: Project Navigation
tags:
  - safedealz
  - workflow/navigation
---

# Project navigation

From `safeDealz`, use these stable locations:

| Area | Relative location | Purpose |
| --- | --- | --- |
| Backend | `backend/` | API application, tests, OpenAPI and generator |
| Flutter | `flutter/` | Store Manager, Vendor and Diagnostics apps |
| Files | `files/` | Plans, design, implementation, security and memory |
| React admin | `react/admin/` | Admin and Super Admin web application |

## Start order

1. [[Home]]
2. [[01 Memory/Current State]]
3. [start.md](../../start.md)
4. [plan.md](../../plan.md) and [phases.md](../../phases.md)
5. [implementation.md](../../implementation.md)
6. The active task in [tasks](../../tasks/)

## Foundation commands

Run from `safeDealz`:

```bash
make -f files/Makefile generate-api
make -f files/Makefile check-p00
```
