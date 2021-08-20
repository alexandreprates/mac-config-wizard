#!/usr/bin/env bash
source ./wizard/settings/settings.sh
source ./wizard/utils/utils.sh

echo "Welcome to the MacOS Wizard for Software Engineers!"

# confirm "[WIZARD]: Install pre-requisites?" && execute_all_scripts_in_folder $PRE_REQUISITES_FOLDER
confirm "[WIZARD]: Install apps with GUI?" && execute_all_scripts_in_folder $APPS_FOLDER
confirm "[WIZARD]: Install software engineering tools?" && execute_all_scripts_in_folder $SOFTWARE_ENGINEERING_TOOLS_FOLDER
confirm "[WIZARD]: Install K8s tools?" && execute_all_scripts_in_folder $K8S_TOOLS_FOLDER
confirm "[WIZARD]: Install cloud tools?" && execute_all_scripts_in_folder $CLOUD_TOOLS_FOLDER


# read -r -p "[WIZARD]: Install pre-requisites? " response
# execute_all_scripts_in_folder_if_yes "$response" "$PRE_REQUISITES_FOLDER"
#
# read -r -p "[WIZARD]: Install apps with GUI? " response
# execute_all_scripts_in_folder_if_yes "$response" "$APPS_FOLDER"
#
# read -r -p "[WIZARD]: Install software engineering tools? " response
# execute_all_scripts_in_folder_if_yes "$response" "$SOFTWARE_ENGINEERING_TOOLS_FOLDER"
#
# read -r -p "[WIZARD]: Install K8s tools? " response
# execute_all_scripts_in_folder_if_yes "$response" "$K8S_TOOLS_FOLDER"
#
# read -r -p "[WIZARD]: Install cloud tools? " response
# execute_all_scripts_in_folder_if_yes "$response" "$CLOUD_TOOLS_FOLDER"
