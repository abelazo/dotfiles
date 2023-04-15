#!/usr/bin/env bash

function usage() {
    BIN_NAME="$(basename "$(test -L "$0" && realpath "$0" || echo "$0")")"
    echo "NAME"
    echo "     ${BIN_NAME} -- Short descrition"
    echo ""
    echo "SYNOPSIS"
    echo "     ${BIN_NAME} -r arg1 -s arg2 -t arg3 [-b optionalArg]"
    echo ""
    echo "DESCRIPTION"
    echo "     Long descrition."
    echo ""
    echo "     The following options are available:"
    echo ""
    echo "      -r  arg1"
    echo "              Arg1 description."
    echo ""
    echo "      -s  arg2"
    echo "              Arg2 description"
    echo ""
    echo "      -t  arg3"
    echo "              Arg3 description"
    echo ""
    echo "      -b  optionalArg"
    echo "              Optional arg description"
    echo ""
    echo ""
    exit 1
}

args=`getopt r:s:t:b:h $*`
# you should not use `getopt abo: "$@"` since that would parse
# the arguments differently from what the set command below does.
if [ $? != 0 ]; then
    usage
    exit 2
fi
set -- $args
for i; do
    case "$i" in
        -r)
            eval REPOSITORY=${2}
            shift 2;;
        -s)
            # Get environment in lowercase
            source_env=$(echo ${2} | tr '[:upper:]' '[:lower:]')
            SOURCE_ENV=$(echo ${2} | tr '[:lower:]' '[:upper:]')
            shift 2;;
        -t)
            # Get environment in lowercase
            target_env=$(echo ${2} | tr '[:upper:]' '[:lower:]')
            TARGET_ENV=$(echo ${2} | tr '[:lower:]' '[:upper:]')
            shift 2;;
        -b)
            # Get provided branch name
            BRANCH_NAME=${2}
            shift 2;;
        -h)
            usage
            shift;;
        --)
            shift; break;;
    esac
done

# Check mandatory arguments
if [ -z ${REPOSITORY} ]; then
    echo "[ERROR] REPOSITORY has not been provided and it is mandatory"
    echo
    echo "Try -h for additional information"
    echo
    exit 2
fi
