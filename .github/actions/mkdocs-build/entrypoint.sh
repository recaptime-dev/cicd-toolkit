#!/usr/bin/env -S bash -l

WORKSPACE_DIR=${GITHUB_WORKSPACE}
MKDOCS_CONFIG_PATH="${WORKSPACE_DIR}/${1:-"mkdocs.yml"}"

echo "::group::installing project dependencies"
if [ -f "$WORKSPACE_DIR/Pipfile.lock" ]; then
  pipenv install --ignore-pipfile --deploy
else
  pip3 install -r requirements.txt
fi
echo "::endgroup::"

echo "::group::running build"
if [ -f "$WORKSPACE_DIR/Pipfile.lock" ]; then
  pipenv run mkdocs build -f "${MKDOCS_CONFIG_PATH}" -d site
else
  mkdocs build -f "${MKDOCS_CONFIG_PATH}" -d site
fi
echo "::endgroup::"

echo "::group::generating archive"
tar -C site -cvz . -f build-result.tar.gz
echo "::endgroup::"

echo "::group:: cleanup"
rm -rv site
echo "::endgroup::"
