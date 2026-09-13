.PHONY: generate-api check-flutter test-backend check-p00

REPOSITORY_ROOT := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/..)

generate-api:
	$(REPOSITORY_ROOT)/backend/tool/generate_api.sh

check-flutter:
	@for app in store_manager vendor diagnostics; do \
		(cd $(REPOSITORY_ROOT)/flutter/$$app && flutter analyze && flutter test) || exit 1; \
	done

test-backend:
	cd $(REPOSITORY_ROOT)/backend && npm test

check-p00: generate-api check-flutter test-backend
