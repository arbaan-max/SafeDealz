# SafeDealz

Development workspace for three Flutter applications, a React administration
interface planned for P01, and a Node.js/Express/MongoDB API.

Start every task with [start.md](start.md). P00 creates only the
Flutter and backend foundations; feature development begins in later phases.

## Projects

- flutter/store_manager — SafeDealz Store Manager
- flutter/vendor — SafeDealz Vendor
- flutter/diagnostics — SafeDealz Diagnostics for Android
- backend — Node.js/Express API
- backend/openapi/openapi.json — canonical OpenAPI contract
- react/admin — React administration application location for P01
- files/obsidian — portable Obsidian vault and local project memory

Generate all Flutter API clients with `make -f files/Makefile generate-api`. Run the complete P00
foundation verification with `make -f files/Makefile check-p00`.

To use local memory on any computer, open `safeDealz/files/obsidian` as an Obsidian vault and start with [its Home note](obsidian/Home.md). The vault contains no machine-specific project path.

The complete project uses one Git repository. See the [Git workflow](git-workflow.md) for cloning and future pushes.
