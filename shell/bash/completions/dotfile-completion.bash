_dot_completions()
{
    if [ ${#COMP_WORDS[@]} -gt 3 ]; then
        COMPREPLY=()
    return
    fi

    if [ "${#COMP_WORDS[@]}" != "2" ]; then
        contextIndex=$(( ${COMP_CWORD} - 1 ))
        currentContext=${COMP_WORDS[${contextIndex}]}
        for dotfilesPath in $DOTFILES_PATHS; do
            if [ -d ${dotfilesPath}/scripts/${currentContext} ]; then
               workingPath=$(realpath ${dotfilesPath}/scripts/${currentContext})
            fi
        done
        local availableScripts=$(find ${workingPath} -mindepth 1 -maxdepth 1 -type f -exec basename '{}' \;)
        COMPREPLY=($(compgen -W "${availableScripts}" "${COMP_WORDS[2]}"))
    else
        read -r -a dotfilesLocations <<< "$DOTFILES_PATHS"
        scriptsLocations=$(printf "%s/scripts " "${dotfilesLocations[@]}")
        local contexList=$(find ${scriptsLocations} -mindepth 1 -maxdepth 1 -exec basename '{}' \;)
        COMPREPLY=($(compgen -W "${contexList}" "${COMP_WORDS[1]}"))
    fi
}

_dotfiles_path_based_completions()
{
    if [ ${#COMP_WORDS[@]} -gt 3 ]; then
        COMPREPLY=()
    return
    fi

    if [ "${#COMP_WORDS[@]}" != "2" ]; then
        contextIndex=$(( ${COMP_CWORD} - 1 ))
    currentContext=${COMP_WORDS[${contextIndex}]}
    local availableScripts=$(find $DOTFILES_PATH/scripts/${currentContext} -mindepth 1 -maxdepth 1 -type f -exec basename '{}' \;)
    COMPREPLY=($(compgen -W "${availableScripts}" "${COMP_WORDS[2]}"))
    else
    local contexList=$(find $DOTFILES_PATH/scripts -mindepth 1 -maxdepth 1 -exec basename '{}' \;)
    COMPREPLY=($(compgen -W "${contexList}" "${COMP_WORDS[1]}"))
    fi
}
complete -o default -F _dot_completions dot
