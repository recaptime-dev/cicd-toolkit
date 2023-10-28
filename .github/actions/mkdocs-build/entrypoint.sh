#!/usr/bin/env -S bash -l

WORKSPACE_DIR=${GITHUB_WORKSPACE}
MKDOCS_CONFIG_PATH="/github/workspace/${1}"

echo "::group::installing project dependencies"
if [ -f "$GITHUB_WORKSPACE/Pipfile.lock" ]; then
  pipenv install --ignore-pipfile --deploy
else
  pip3 install -r requirements.txt
echo "::endgroup::"

echo "::group::running build"
if [ -f "$GITHUB_WORKSPACE/Pipfile.lock" ]; then
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
