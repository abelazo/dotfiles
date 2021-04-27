#!/usr/bin/env bash

pushd $HOME >& /dev/null
for configurationFile in `find ${DOTFILES_PATH} -name "DOT*" -exec greadlink -f '{}' \;`; do
    targetFilename=$(basename ${configurationFile} | sed -e 's/DOT/./')
    echo ${targetFilename}
    #ln -sf ${configurationFile} ${targetFilename}
done
popd >& /dev/null

#find ~ -name '.*' -type l -maxdepth 1 -ls
