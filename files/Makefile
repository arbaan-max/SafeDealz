.PHONY: generate-api check-flutter test-backend check-react check-p00 check-p01 check-p02 check-p03 check-p04 check-p05 check-p06 check-p07 check-p08 check-p09 check-p10 check-p11 check-p12 check-p13 check-p14 check-p15 check-p16 check-p17 check-p18 check-p19 check-p20 check-p21 check-p22 check-p23 check-p24 check-p25 check-p26 check-p27 check-p28 check-p29

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

check-p03: generate-api check-react check-flutter test-backend

check-p04: generate-api check-react check-flutter test-backend

check-p05: generate-api check-react check-flutter test-backend

check-p06: generate-api check-react check-flutter test-backend

check-p07: generate-api check-react check-flutter test-backend

check-p08: generate-api check-react check-flutter test-backend

check-p09: generate-api check-react check-flutter test-backend

check-p10: generate-api check-react check-flutter test-backend

check-p11: generate-api check-react check-flutter test-backend

check-p12: generate-api check-react check-flutter test-backend

check-p13: generate-api check-react check-flutter test-backend

check-p14: generate-api check-react check-flutter test-backend

check-p15: generate-api check-react check-flutter test-backend

check-p16: generate-api check-react check-flutter test-backend

check-p17: generate-api check-react check-flutter test-backend

check-p18: generate-api check-react check-flutter test-backend

check-p19: generate-api check-react check-flutter test-backend

check-p20: generate-api check-react check-flutter test-backend

check-p21: generate-api check-react check-flutter test-backend

check-p22: generate-api check-react check-flutter test-backend

check-p23: generate-api check-react check-flutter test-backend

check-p24: generate-api check-react check-flutter test-backend
	cd $(REPOSITORY_ROOT)/flutter/store_manager && flutter build apk --debug
	cd $(REPOSITORY_ROOT)/flutter/vendor && flutter build apk --debug
	cd $(REPOSITORY_ROOT)/flutter/diagnostics && flutter build apk --debug

check-p25: generate-api check-react check-flutter test-backend

check-p26: generate-api check-react check-flutter test-backend

check-p27: generate-api check-react check-flutter test-backend

check-p28: generate-api check-react check-flutter test-backend

check-p29: generate-api check-react check-flutter test-backend
