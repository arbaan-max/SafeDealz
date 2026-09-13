#!/bin/zsh
set -euo pipefail

repository_root="${0:A:h:h:h}"
apps=(store_manager vendor diagnostics)

for app in "${apps[@]}"; do
  (
    cp "$repository_root/backend/openapi/openapi.json" \
      "$repository_root/flutter/$app/swagger/swagger.json"
    cd "$repository_root/flutter/$app"
    dart run swagger_parser
    dart run build_runner build --delete-conflicting-outputs
  )
done
