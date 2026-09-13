# CLAUDE.md — Node.js + Express + MongoDB Backend Architecture Guide

# Developer Expectations

The developer prefers scalable, production-ready backend systems with minimal unnecessary abstraction and highly maintainable code.

Primary backend stack:

- Node.js
- Express.js
- MongoDB
- Mongoose

Preferred architecture:

- Controller → Service → Repository → Model
- RESTful APIs
- Reusable business logic
- Modular folder structure
- Centralized error handling
- Minimal duplicate logic

The developer strongly prefers:

- Modifying existing systems over creating duplicate systems
- Extending existing APIs instead of creating unnecessary new endpoints
- Incremental implementation
- Minimal token usage
- Concise responses
- No speculative code generation
* No unnecessary abstractions

---

# Agent Workflow Rules

Before implementing ANY feature:

1. Read existing related files first
2. Analyze existing architecture and flows
3. Check whether similar functionality already exists
4. Prefer extending existing APIs/services instead of creating new ones
5. Generate a small implementation plan first
6. Store the implementation plan in `IMPLEMENTATION_PLAN.md`
7. WAIT for developer approval before modifying code

Never directly start implementation without approval.

---

# Implementation Approval System

Before code generation:

- Create or update:
  `IMPLEMENTATION_PLAN.md`

The plan must contain:

- Feature goal
- Existing files involved
- Files that will be modified
- Whether existing APIs can be extended
- Database/schema impact
- Risks/dependencies
* Minimal implementation approach

Do NOT generate implementation code until developer approval is received.

---

# Token Efficiency Rules

- Keep responses concise
- Avoid unnecessary explanations
- Avoid large code dumps unless requested
- Avoid generating duplicate APIs
- Avoid generating duplicate services
- Avoid unnecessary utility/helper files
- Reuse existing architecture patterns
- Prefer modifying existing files over creating new ones
- Avoid speculative abstractions
- Avoid rewriting unrelated code

---

# API Design Rules

Before creating a new API:

- Check if an existing endpoint can be extended
- Check if optional parameters can support the new requirement
- Check if current controller/service already partially supports the feature

Example:
If phone OTP login already exists and email login is added:

- Extend the same login API
- Add optional parameters
- Reuse existing OTP/business logic
- Avoid separate duplicate login systems unless absolutely necessary

Preferred:
POST /auth/login

Body:
{
"phone": "",
"email": "",
"otp": ""
}

Avoid:

- /phone-login
- /email-login
- duplicate auth flows

---

# Project Folder Structure

backend/
├── src/
│
├── config/
│   ├── db.js
│   ├── env.js
│   └── constants.js
│
├── controllers/
│   └── auth.controller.js
│
├── services/
│   └── auth.service.js
│
├── repositories/
│   └── auth.repository.js
│
├── models/
│   └── user.model.js
│
├── routes/
│   └── auth.routes.js
│
├── middlewares/
│   ├── auth.middleware.js
│   ├── error.middleware.js
│   └── validation.middleware.js
│
├── validators/
│   └── auth.validator.js
│
├── utils/
│   ├── response.js
│   ├── logger.js
│   └── helpers.js
│
├── sockets/
│
├── jobs/
│
├── cron/
│
├── docs/
│
├── IMPLEMENTATION_PLAN.md
│
├── app.js
└── server.js

---

# Controller Rules

Controllers should:

- Handle request/response only
- Validate required request data
- Call services
- Return standardized responses
- Never contain database logic
- Never contain complex business logic

Keep controllers thin.

---

# Service Rules

Services contain:

- Business logic
- Reusable feature logic
- Multi-model coordination
- External integrations

Services should:

- Reuse existing logic whenever possible
- Avoid duplicate flows
- Be modular and reusable

---

# Repository Rules

Repositories handle:

- MongoDB queries
- Aggregation pipelines
- Database filtering
- Pagination queries

Repositories should:

- Never contain business logic
- Only interact with models/database

---

# Model Rules

Use Mongoose schemas with:

- timestamps: true
- proper indexes
- validation
- minimal schema nesting

Rules:

- Avoid deeply nested objects
- Prefer references over massive embedded documents
- Use enums where appropriate
- Keep schemas scalable

---

# Route Rules

Routes should:

- Only define endpoints
- Apply middleware
- Connect controller handlers

Never place business logic inside routes.

---

# Error Handling Rules

Use centralized error handling.

Avoid:

- scattered try/catch duplication
- raw error responses
- console.log debugging in production code

Preferred:

- standardized API responses
- centralized middleware
- reusable error utilities

---

# Database Rules

Before schema modification:

- Check existing schema compatibility
- Avoid breaking old APIs
- Prefer additive changes
- Avoid unnecessary collections

Before creating new collections:

- Verify existing collections cannot support the feature
- Prefer extending current models when reasonable

---

# Code Style Rules

Preferred:

- async/await
- early returns
- small reusable functions
- explicit variable naming
- modular files

Avoid:

- callback patterns
- deeply nested conditions
- massive controller files
- giant service files
- unnecessary classes
- overengineering

---

# Strictly Forbidden

- Creating duplicate APIs unnecessarily
- Rewriting existing architecture without approval
- Modifying unrelated files
- Creating unnecessary helper/util files
- Mixing database logic into controllers
- Mixing business logic into routes
- Creating speculative abstractions
- Generating large implementations without approval
- Ignoring existing architecture patterns
- Creating new auth systems when existing flows can be extended

---

# Agent Expectations

Before implementation:

- Analyze existing related files first
- Explain minimal implementation approach
- Prefer extending existing systems
- Minimize token usage
- Ask for approval before code generation

During implementation:

- Modify only necessary files
- Keep changes incremental
- Avoid unnecessary refactors
- Maintain backwards compatibility
- Reuse existing utilities/services

When uncertain:

- Ask concise clarification questions
- Do not assume architecture changes
