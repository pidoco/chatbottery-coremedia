#!/usr/bin/env bash

set -e

main() {
  local blueprint_dir=$1
  local extension_dir="$blueprint_dir/modules/extensions/chatbottery"

  if [[ -d $extension_dir  ]]; then
    echo "$extension_dir already exists. Deleting it now.."
    read -pr '[Enter] to continue, [Ctrl+C] to abort'
    rm -r "$extension_dir"
  fi

  mkdir -p "$extension_dir"
  cp -r ./* "$extension_dir"

  java -jar cm-ext-tool.jar "$blueprint_dir"

  cd "$blueprint_dir"

  mvn dependency:copy \
  -Dartifact=com.coremedia.tools.extensions:extensions:LATEST:jar:all \
  -DlocalRepositoryDirectory=extensions-tool \
  -Dtransitive=false \
  -DoutputDirectory=tool \
  -Dmdep.stripVersion=true \
  -Dmdep.stripClassifier=true

  java -jar tool/extensions.jar \
  --task synchronize \
  --task-input-file workspace-configuration/extensions/managed-extensions.txt \
  --extension-config-file workspace-configuration/extensions/extension-config.properties

  echo "Please rebuild the blueprint workspace for the changes to take effect."
}

main "$1"
