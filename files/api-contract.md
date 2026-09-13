# SafeDealz API contract

openapi.json is the single editable API contract. The generation command copies
it to each Flutter project's swagger/swagger.json and then generates that app's
Dio/Retrofit client and Freezed JSON models. Do not edit the synchronized local
spec copies or generated files under lib/data/api.

From the repository root, run:

    make -f files/Makefile generate-api

The target runs backend/tool/generate_api.sh, which executes swagger_parser followed by
build_runner for Store Manager, Vendor and Diagnostics. Use `make -f files/Makefile check-p00` to
regenerate, analyze, and test all Flutter apps plus the backend health API.

Runtime packages:

- dio — HTTP transport configured through DioFactory.
- retrofit — typed generated HTTP interfaces.
- json_annotation and freezed_annotation — generated model annotations.

Generation packages:

- swagger_parser — reads this OpenAPI contract.
- build_runner — executes generated-code builders.
- retrofit_generator — produces the Dio client implementation.
- freezed and json_serializable — produce immutable JSON DTO code.

The versions are pinned in each pubspec because this exact combination passed
generation and analysis with the current Flutter/Dart SDK.

The P00 contract includes only the health endpoint. Feature endpoints are added
contract-first in their implementation phase.
