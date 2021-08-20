function confirm() {
    #######################################
    # Displays a message and waits for user decision
    #
    # Arguments:
    #   $1: message (optional)
    #
    # Returns:
    #   0 (if yes)
    #   1 (when no)
    #######################################
    read -r -p "${1:-Are you sure?} [Y/n] " response
    case "$response" in
        [yY])
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

function execute_all_scripts_in_folder {
    #######################################
    # Executes all scripts in a folder path.
    #
    # Arguments:
    #   $1: relative folder path - example: ./folder_name (not a string)
    #
    # Returns:
    #   0 (success)
    #######################################
    for file in $1/*; do  # uses relative folder path in $1
        bash $file
    done
}

function install_package() {
    #######################################
    # Install an app with the selected package manager
    #
    # Globals:
    #   $PACKAGE_MANAGER: comes from the settings.sh file
    #
    # Arguments:
    #   $1: package to install
    #
    # Returns:
    #   0 (success)
    #######################################
    echo "Installing $1..."
    $PACKAGE_MANAGER $1
}
