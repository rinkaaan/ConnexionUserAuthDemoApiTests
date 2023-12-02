WORKPLACE="$HOME/workplace/{{ version_set_name }}"
WORKSPACE="$WORKPLACE/{{ version_set_name }}ApiTests"
SCHEMA_PATH="$WORKPLACE/{{ version_set_name }}Api/api/openapi.yaml"

(
  cd "$WORKSPACE"
  rm -rf openapi_client
  mkdir -p openapi_client

  cd openapi_client
  npx @openapitools/openapi-generator-cli generate -i "$SCHEMA_PATH" -g python
  pip install .
)

rm -rf openapi_client
