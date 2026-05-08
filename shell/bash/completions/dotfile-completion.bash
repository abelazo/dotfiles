# Bash completion for the `dot` dispatcher.
#
# Completion is driven by COMP_WORDS (the tokens on the command line, with the
# command itself at index 0) and COMP_CWORD (the index of the word the user is
# currently completing). Suggestions are returned by populating the COMPREPLY
# array, which bash filters and presents to the user.
#
# Word count maps to completion stage:
#   2 words  → `dot <ctx>`              complete the context (e.g. aws, git)
#   3 words  → `dot <ctx> <script>`     complete the script under that context
#   4+ words → `dot <ctx> <script> ...` complete the script's own subcommands
#                                       and flags, parsed from `--help`
_dot_completions()
{
  # Stage 3: completing arguments to a specific script. We invoke the script's
  # `--help` and parse its docopt-style output. Errors are swallowed so scripts
  # without `--help` simply yield no suggestions instead of polluting the prompt.
  if [ ${#COMP_WORDS[@]} -gt 3 ]; then
    local helpOutput
    helpOutput=$(dot "${COMP_WORDS[1]}" "${COMP_WORDS[2]}" --help 2>/dev/null)

    # Extract subcommands from the `Usage:` block. Each usage line looks like
    # `  <script> <subcommand> [args...]`, so we take the second field. The
    # awk `flag` acts as a state machine: turn on at the section header, turn
    # off as soon as we hit a non-indented line (the next section or EOF).
    # The regex on $2 filters out lines like `  <script> [--opt]` where the
    # second field is a flag/placeholder rather than a real subcommand.
    local subcommands=$(echo "${helpOutput}" | awk '
      /^Usage:/{flag=1; next}
      flag && /^[^ ]/{flag=0}
      flag && $2 ~ /^[a-zA-Z][a-zA-Z0-9_-]*$/ {print $2}' | sort -u)

    # Extract flags from the `Options:` block. Lines look like
    # `  -g, --log-group=<log-group>  description...`, so we walk fields from
    # the left and emit any that start with `-`, stopping at the first
    # non-flag field (the description). gsub strips trailing `,` (separator
    # between short/long forms) and `=<value>` (argument placeholder).
    local options=$(echo "${helpOutput}" | awk '
      /^Options:/{flag=1; next}
      flag && /^[^ ]/{flag=0}
      flag {
        for(i=1;i<=NF;i++) {
          if($i ~ /^-/) {
            gsub(/[,=].*/, "", $i)
            print $i
          } else {
            break
          }
        }
      }' | sort -u)

    # `--` ends compgen's own option parsing so a user-typed prefix like
    # `--log` is treated as a word to filter, not as a compgen flag.
    COMPREPLY=($(compgen -W "${subcommands} ${options}" -- "${COMP_WORDS[COMP_CWORD]}"))
    return
  fi

  # Stage 2: completing the script name under a chosen context. Search every
  # configured dotfiles root for a matching context directory; the last hit
  # wins, letting later entries in DOTFILES_PATHS shadow earlier ones.
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
  # Stage 1: completing the context. Union the immediate children of every
  # configured `scripts/` directory so contexts from all roots are offered.
  else
    read -r -a dotfilesLocations <<< "$DOTFILES_PATHS"
    scriptsLocations=$(printf "%s/scripts " "${dotfilesLocations[@]}")
    local contexList=$(find ${scriptsLocations} -mindepth 1 -maxdepth 1 -exec basename '{}' \;)
    COMPREPLY=($(compgen -W "${contexList}" "${COMP_WORDS[1]}"))
  fi
}

# `-o default` falls back to bash's filename completion when our function
# returns no matches — useful for script args that take file paths.
complete -o default -F _dot_completions dot
