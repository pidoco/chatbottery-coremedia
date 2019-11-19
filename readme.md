# Chatbottery CoreMedia extension

## Install

- Copy chatbottery folder to `modules/extensions`
- Change `version` and `groupId` in the parent section of all pom.xml files to conform to your project.
- Add `chatbottery` to a new line in `workspace-configuration/extensions/managed-extensions.txt`.
- Add `chatbottery` as a module to the `module` section of the `pom.xml` in `modules/extensions`. 
- Download the CoreMedia extension tool with `mvn dependency:copy -Dartifact=com.coremedia.tools.extensions:extensions:LATEST:jar:all -DlocalRepositoryDirectory=extensions-tool -Dtransitive=false -DoutputDirectory=tool -Dmdep.stripVersion=true -Dmdep.stripClassifier=true`.
- In your project base directory execute `java -jar tool/extensions.jar --task synchronize --task-input-file workspace-configuration/extensions/managed-extensions.txt --extension-config-file workspace-configuration/extensions/extension-config.properties` to enable the extension.
- Rebuild the entire blueprint workspace and deploy the cms, cae, preview and studio

OR

- execute `install-extension.sh` providing the absolute path to your blueprint workspace.
- Rebuild the entire blueprint workspace and deploy the cms, cae, preview and studio


### Install script

The `install-extension.sh` script will delete the entire chatbottery extension directory if it already exists in the
blueprint workspace. To prevent this from happening simply abort the script when prompted.
