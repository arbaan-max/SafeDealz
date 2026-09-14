.PHONY: generate-api check-flutter test-backend check-react check-p00 check-p01 check-p02

REPOSITORY_ROOT := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/..)

generate-api:
	$(REPOSITORY_ROOT)/backend/tool/generate_api.sh

check-flutter:
	@for app in store_manager vendor diagnostics; do \
		(cd $(REPOSITORY_ROOT)/flutter/$$app && flutter analyze && flutter test) || exit 1; \
	done

test-backend:
	cd $(REPOSITORY_ROOT)/backend && npm test

check-react:
	cd $(REPOSITORY_ROOT)/react/admin && npm run check

check-p00: generate-api check-flutter test-backend

check-p01: generate-api check-react check-flutter test-backend

check-p02: generate-api check-react check-flutter test-backend
	cd $(REPOSITORY_ROOT)/react/admin && npm audit --audit-level=high
	cd $(REPOSITORY_ROOT)/backend && npm audit --audit-level=high
	cd $(REPOSITORY_ROOT)/flutter/store_manager && flutter build apk --debug
	cd $(REPOSITORY_ROOT)/flutter/vendor && flutter build apk --debug
