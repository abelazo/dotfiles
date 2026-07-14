_pact() {
    local i cur prev opts cmd
    COMPREPLY=()
    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
        cur="$2"
    else
        cur="${COMP_WORDS[COMP_CWORD]}"
    fi
    prev="$3"
    cmd=""
    opts=""

    for i in "${COMP_WORDS[@]:0:COMP_CWORD}"
    do
        case "${cmd},${i}" in
            ",$1")
                cmd="pact"
                ;;
            pact,broker)
                cmd="pact__subcmd__broker"
                ;;
            pact,completions)
                cmd="pact__subcmd__completions"
                ;;
            pact,extension)
                cmd="pact__subcmd__extension"
                ;;
            pact,help)
                cmd="pact__subcmd__help"
                ;;
            pact,mock)
                cmd="pact__subcmd__mock"
                ;;
            pact,pactflow)
                cmd="pact__subcmd__pactflow"
                ;;
            pact,plugin)
                cmd="pact__subcmd__plugin"
                ;;
            pact,stub)
                cmd="pact__subcmd__stub"
                ;;
            pact,verifier)
                cmd="pact__subcmd__verifier"
                ;;
            pact__subcmd__broker,can-i-deploy)
                cmd="pact__subcmd__broker__subcmd__can__subcmd__i__subcmd__deploy"
                ;;
            pact__subcmd__broker,can-i-merge)
                cmd="pact__subcmd__broker__subcmd__can__subcmd__i__subcmd__merge"
                ;;
            pact__subcmd__broker,create-environment)
                cmd="pact__subcmd__broker__subcmd__create__subcmd__environment"
                ;;
            pact__subcmd__broker,create-or-update-pacticipant)
                cmd="pact__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__pacticipant"
                ;;
            pact__subcmd__broker,create-or-update-version)
                cmd="pact__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__version"
                ;;
            pact__subcmd__broker,create-or-update-webhook)
                cmd="pact__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__webhook"
                ;;
            pact__subcmd__broker,create-version-tag)
                cmd="pact__subcmd__broker__subcmd__create__subcmd__version__subcmd__tag"
                ;;
            pact__subcmd__broker,create-webhook)
                cmd="pact__subcmd__broker__subcmd__create__subcmd__webhook"
                ;;
            pact__subcmd__broker,delete-branch)
                cmd="pact__subcmd__broker__subcmd__delete__subcmd__branch"
                ;;
            pact__subcmd__broker,delete-environment)
                cmd="pact__subcmd__broker__subcmd__delete__subcmd__environment"
                ;;
            pact__subcmd__broker,delete-version-tag)
                cmd="pact__subcmd__broker__subcmd__delete__subcmd__version__subcmd__tag"
                ;;
            pact__subcmd__broker,delete-webhook)
                cmd="pact__subcmd__broker__subcmd__delete__subcmd__webhook"
                ;;
            pact__subcmd__broker,describe-environment)
                cmd="pact__subcmd__broker__subcmd__describe__subcmd__environment"
                ;;
            pact__subcmd__broker,describe-pacticipant)
                cmd="pact__subcmd__broker__subcmd__describe__subcmd__pacticipant"
                ;;
            pact__subcmd__broker,describe-version)
                cmd="pact__subcmd__broker__subcmd__describe__subcmd__version"
                ;;
            pact__subcmd__broker,docker)
                cmd="pact__subcmd__broker__subcmd__docker"
                ;;
            pact__subcmd__broker,generate-uuid)
                cmd="pact__subcmd__broker__subcmd__generate__subcmd__uuid"
                ;;
            pact__subcmd__broker,get-pacts)
                cmd="pact__subcmd__broker__subcmd__get__subcmd__pacts"
                ;;
            pact__subcmd__broker,help)
                cmd="pact__subcmd__broker__subcmd__help"
                ;;
            pact__subcmd__broker,list-environments)
                cmd="pact__subcmd__broker__subcmd__list__subcmd__environments"
                ;;
            pact__subcmd__broker,list-latest-pact-versions)
                cmd="pact__subcmd__broker__subcmd__list__subcmd__latest__subcmd__pact__subcmd__versions"
                ;;
            pact__subcmd__broker,list-pacticipants)
                cmd="pact__subcmd__broker__subcmd__list__subcmd__pacticipants"
                ;;
            pact__subcmd__broker,provider-states)
                cmd="pact__subcmd__broker__subcmd__provider__subcmd__states"
                ;;
            pact__subcmd__broker,publish)
                cmd="pact__subcmd__broker__subcmd__publish"
                ;;
            pact__subcmd__broker,record-deployment)
                cmd="pact__subcmd__broker__subcmd__record__subcmd__deployment"
                ;;
            pact__subcmd__broker,record-release)
                cmd="pact__subcmd__broker__subcmd__record__subcmd__release"
                ;;
            pact__subcmd__broker,record-support-ended)
                cmd="pact__subcmd__broker__subcmd__record__subcmd__support__subcmd__ended"
                ;;
            pact__subcmd__broker,record-undeployment)
                cmd="pact__subcmd__broker__subcmd__record__subcmd__undeployment"
                ;;
            pact__subcmd__broker,ruby)
                cmd="pact__subcmd__broker__subcmd__ruby"
                ;;
            pact__subcmd__broker,test-webhook)
                cmd="pact__subcmd__broker__subcmd__test__subcmd__webhook"
                ;;
            pact__subcmd__broker,update-environment)
                cmd="pact__subcmd__broker__subcmd__update__subcmd__environment"
                ;;
            pact__subcmd__broker__subcmd__docker,help)
                cmd="pact__subcmd__broker__subcmd__docker__subcmd__help"
                ;;
            pact__subcmd__broker__subcmd__docker,remove)
                cmd="pact__subcmd__broker__subcmd__docker__subcmd__remove"
                ;;
            pact__subcmd__broker__subcmd__docker,start)
                cmd="pact__subcmd__broker__subcmd__docker__subcmd__start"
                ;;
            pact__subcmd__broker__subcmd__docker,stop)
                cmd="pact__subcmd__broker__subcmd__docker__subcmd__stop"
                ;;
            pact__subcmd__broker__subcmd__docker__subcmd__help,help)
                cmd="pact__subcmd__broker__subcmd__docker__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__broker__subcmd__docker__subcmd__help,remove)
                cmd="pact__subcmd__broker__subcmd__docker__subcmd__help__subcmd__remove"
                ;;
            pact__subcmd__broker__subcmd__docker__subcmd__help,start)
                cmd="pact__subcmd__broker__subcmd__docker__subcmd__help__subcmd__start"
                ;;
            pact__subcmd__broker__subcmd__docker__subcmd__help,stop)
                cmd="pact__subcmd__broker__subcmd__docker__subcmd__help__subcmd__stop"
                ;;
            pact__subcmd__broker__subcmd__help,can-i-deploy)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__can__subcmd__i__subcmd__deploy"
                ;;
            pact__subcmd__broker__subcmd__help,can-i-merge)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__can__subcmd__i__subcmd__merge"
                ;;
            pact__subcmd__broker__subcmd__help,create-environment)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__environment"
                ;;
            pact__subcmd__broker__subcmd__help,create-or-update-pacticipant)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__or__subcmd__update__subcmd__pacticipant"
                ;;
            pact__subcmd__broker__subcmd__help,create-or-update-version)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__or__subcmd__update__subcmd__version"
                ;;
            pact__subcmd__broker__subcmd__help,create-or-update-webhook)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__or__subcmd__update__subcmd__webhook"
                ;;
            pact__subcmd__broker__subcmd__help,create-version-tag)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__version__subcmd__tag"
                ;;
            pact__subcmd__broker__subcmd__help,create-webhook)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__webhook"
                ;;
            pact__subcmd__broker__subcmd__help,delete-branch)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__delete__subcmd__branch"
                ;;
            pact__subcmd__broker__subcmd__help,delete-environment)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__delete__subcmd__environment"
                ;;
            pact__subcmd__broker__subcmd__help,delete-version-tag)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__delete__subcmd__version__subcmd__tag"
                ;;
            pact__subcmd__broker__subcmd__help,delete-webhook)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__delete__subcmd__webhook"
                ;;
            pact__subcmd__broker__subcmd__help,describe-environment)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__describe__subcmd__environment"
                ;;
            pact__subcmd__broker__subcmd__help,describe-pacticipant)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__describe__subcmd__pacticipant"
                ;;
            pact__subcmd__broker__subcmd__help,describe-version)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__describe__subcmd__version"
                ;;
            pact__subcmd__broker__subcmd__help,docker)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__docker"
                ;;
            pact__subcmd__broker__subcmd__help,generate-uuid)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__generate__subcmd__uuid"
                ;;
            pact__subcmd__broker__subcmd__help,get-pacts)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__get__subcmd__pacts"
                ;;
            pact__subcmd__broker__subcmd__help,help)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__broker__subcmd__help,list-environments)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__list__subcmd__environments"
                ;;
            pact__subcmd__broker__subcmd__help,list-latest-pact-versions)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__list__subcmd__latest__subcmd__pact__subcmd__versions"
                ;;
            pact__subcmd__broker__subcmd__help,list-pacticipants)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__list__subcmd__pacticipants"
                ;;
            pact__subcmd__broker__subcmd__help,provider-states)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__provider__subcmd__states"
                ;;
            pact__subcmd__broker__subcmd__help,publish)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__publish"
                ;;
            pact__subcmd__broker__subcmd__help,record-deployment)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__record__subcmd__deployment"
                ;;
            pact__subcmd__broker__subcmd__help,record-release)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__record__subcmd__release"
                ;;
            pact__subcmd__broker__subcmd__help,record-support-ended)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__record__subcmd__support__subcmd__ended"
                ;;
            pact__subcmd__broker__subcmd__help,record-undeployment)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__record__subcmd__undeployment"
                ;;
            pact__subcmd__broker__subcmd__help,ruby)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__ruby"
                ;;
            pact__subcmd__broker__subcmd__help,test-webhook)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__test__subcmd__webhook"
                ;;
            pact__subcmd__broker__subcmd__help,update-environment)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__update__subcmd__environment"
                ;;
            pact__subcmd__broker__subcmd__help__subcmd__docker,remove)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__docker__subcmd__remove"
                ;;
            pact__subcmd__broker__subcmd__help__subcmd__docker,start)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__docker__subcmd__start"
                ;;
            pact__subcmd__broker__subcmd__help__subcmd__docker,stop)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__docker__subcmd__stop"
                ;;
            pact__subcmd__broker__subcmd__help__subcmd__provider__subcmd__states,list)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__provider__subcmd__states__subcmd__list"
                ;;
            pact__subcmd__broker__subcmd__help__subcmd__ruby,info)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__info"
                ;;
            pact__subcmd__broker__subcmd__help__subcmd__ruby,install)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__install"
                ;;
            pact__subcmd__broker__subcmd__help__subcmd__ruby,remove)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__remove"
                ;;
            pact__subcmd__broker__subcmd__help__subcmd__ruby,start)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__start"
                ;;
            pact__subcmd__broker__subcmd__help__subcmd__ruby,stop)
                cmd="pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__stop"
                ;;
            pact__subcmd__broker__subcmd__provider__subcmd__states,help)
                cmd="pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__help"
                ;;
            pact__subcmd__broker__subcmd__provider__subcmd__states,list)
                cmd="pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__list"
                ;;
            pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__help,help)
                cmd="pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__help,list)
                cmd="pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__help__subcmd__list"
                ;;
            pact__subcmd__broker__subcmd__ruby,help)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__help"
                ;;
            pact__subcmd__broker__subcmd__ruby,info)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__info"
                ;;
            pact__subcmd__broker__subcmd__ruby,install)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__install"
                ;;
            pact__subcmd__broker__subcmd__ruby,remove)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__remove"
                ;;
            pact__subcmd__broker__subcmd__ruby,start)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__start"
                ;;
            pact__subcmd__broker__subcmd__ruby,stop)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__stop"
                ;;
            pact__subcmd__broker__subcmd__ruby__subcmd__help,help)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__broker__subcmd__ruby__subcmd__help,info)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__info"
                ;;
            pact__subcmd__broker__subcmd__ruby__subcmd__help,install)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__install"
                ;;
            pact__subcmd__broker__subcmd__ruby__subcmd__help,remove)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__remove"
                ;;
            pact__subcmd__broker__subcmd__ruby__subcmd__help,start)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__start"
                ;;
            pact__subcmd__broker__subcmd__ruby__subcmd__help,stop)
                cmd="pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__stop"
                ;;
            pact__subcmd__extension,help)
                cmd="pact__subcmd__extension__subcmd__help"
                ;;
            pact__subcmd__extension,install)
                cmd="pact__subcmd__extension__subcmd__install"
                ;;
            pact__subcmd__extension,list)
                cmd="pact__subcmd__extension__subcmd__list"
                ;;
            pact__subcmd__extension,uninstall)
                cmd="pact__subcmd__extension__subcmd__uninstall"
                ;;
            pact__subcmd__extension,update)
                cmd="pact__subcmd__extension__subcmd__update"
                ;;
            pact__subcmd__extension__subcmd__help,help)
                cmd="pact__subcmd__extension__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__extension__subcmd__help,install)
                cmd="pact__subcmd__extension__subcmd__help__subcmd__install"
                ;;
            pact__subcmd__extension__subcmd__help,list)
                cmd="pact__subcmd__extension__subcmd__help__subcmd__list"
                ;;
            pact__subcmd__extension__subcmd__help,uninstall)
                cmd="pact__subcmd__extension__subcmd__help__subcmd__uninstall"
                ;;
            pact__subcmd__extension__subcmd__help,update)
                cmd="pact__subcmd__extension__subcmd__help__subcmd__update"
                ;;
            pact__subcmd__help,broker)
                cmd="pact__subcmd__help__subcmd__broker"
                ;;
            pact__subcmd__help,completions)
                cmd="pact__subcmd__help__subcmd__completions"
                ;;
            pact__subcmd__help,extension)
                cmd="pact__subcmd__help__subcmd__extension"
                ;;
            pact__subcmd__help,help)
                cmd="pact__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__help,mock)
                cmd="pact__subcmd__help__subcmd__mock"
                ;;
            pact__subcmd__help,pactflow)
                cmd="pact__subcmd__help__subcmd__pactflow"
                ;;
            pact__subcmd__help,plugin)
                cmd="pact__subcmd__help__subcmd__plugin"
                ;;
            pact__subcmd__help,stub)
                cmd="pact__subcmd__help__subcmd__stub"
                ;;
            pact__subcmd__help,verifier)
                cmd="pact__subcmd__help__subcmd__verifier"
                ;;
            pact__subcmd__help__subcmd__broker,can-i-deploy)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__can__subcmd__i__subcmd__deploy"
                ;;
            pact__subcmd__help__subcmd__broker,can-i-merge)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__can__subcmd__i__subcmd__merge"
                ;;
            pact__subcmd__help__subcmd__broker,create-environment)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__environment"
                ;;
            pact__subcmd__help__subcmd__broker,create-or-update-pacticipant)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__pacticipant"
                ;;
            pact__subcmd__help__subcmd__broker,create-or-update-version)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__version"
                ;;
            pact__subcmd__help__subcmd__broker,create-or-update-webhook)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__webhook"
                ;;
            pact__subcmd__help__subcmd__broker,create-version-tag)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__version__subcmd__tag"
                ;;
            pact__subcmd__help__subcmd__broker,create-webhook)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__webhook"
                ;;
            pact__subcmd__help__subcmd__broker,delete-branch)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__delete__subcmd__branch"
                ;;
            pact__subcmd__help__subcmd__broker,delete-environment)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__delete__subcmd__environment"
                ;;
            pact__subcmd__help__subcmd__broker,delete-version-tag)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__delete__subcmd__version__subcmd__tag"
                ;;
            pact__subcmd__help__subcmd__broker,delete-webhook)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__delete__subcmd__webhook"
                ;;
            pact__subcmd__help__subcmd__broker,describe-environment)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__describe__subcmd__environment"
                ;;
            pact__subcmd__help__subcmd__broker,describe-pacticipant)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__describe__subcmd__pacticipant"
                ;;
            pact__subcmd__help__subcmd__broker,describe-version)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__describe__subcmd__version"
                ;;
            pact__subcmd__help__subcmd__broker,docker)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__docker"
                ;;
            pact__subcmd__help__subcmd__broker,generate-uuid)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__generate__subcmd__uuid"
                ;;
            pact__subcmd__help__subcmd__broker,get-pacts)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__get__subcmd__pacts"
                ;;
            pact__subcmd__help__subcmd__broker,list-environments)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__list__subcmd__environments"
                ;;
            pact__subcmd__help__subcmd__broker,list-latest-pact-versions)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__list__subcmd__latest__subcmd__pact__subcmd__versions"
                ;;
            pact__subcmd__help__subcmd__broker,list-pacticipants)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__list__subcmd__pacticipants"
                ;;
            pact__subcmd__help__subcmd__broker,provider-states)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__provider__subcmd__states"
                ;;
            pact__subcmd__help__subcmd__broker,publish)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__publish"
                ;;
            pact__subcmd__help__subcmd__broker,record-deployment)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__record__subcmd__deployment"
                ;;
            pact__subcmd__help__subcmd__broker,record-release)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__record__subcmd__release"
                ;;
            pact__subcmd__help__subcmd__broker,record-support-ended)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__record__subcmd__support__subcmd__ended"
                ;;
            pact__subcmd__help__subcmd__broker,record-undeployment)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__record__subcmd__undeployment"
                ;;
            pact__subcmd__help__subcmd__broker,ruby)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__ruby"
                ;;
            pact__subcmd__help__subcmd__broker,test-webhook)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__test__subcmd__webhook"
                ;;
            pact__subcmd__help__subcmd__broker,update-environment)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__update__subcmd__environment"
                ;;
            pact__subcmd__help__subcmd__broker__subcmd__docker,remove)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__docker__subcmd__remove"
                ;;
            pact__subcmd__help__subcmd__broker__subcmd__docker,start)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__docker__subcmd__start"
                ;;
            pact__subcmd__help__subcmd__broker__subcmd__docker,stop)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__docker__subcmd__stop"
                ;;
            pact__subcmd__help__subcmd__broker__subcmd__provider__subcmd__states,list)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__provider__subcmd__states__subcmd__list"
                ;;
            pact__subcmd__help__subcmd__broker__subcmd__ruby,info)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__info"
                ;;
            pact__subcmd__help__subcmd__broker__subcmd__ruby,install)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__install"
                ;;
            pact__subcmd__help__subcmd__broker__subcmd__ruby,remove)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__remove"
                ;;
            pact__subcmd__help__subcmd__broker__subcmd__ruby,start)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__start"
                ;;
            pact__subcmd__help__subcmd__broker__subcmd__ruby,stop)
                cmd="pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__stop"
                ;;
            pact__subcmd__help__subcmd__extension,install)
                cmd="pact__subcmd__help__subcmd__extension__subcmd__install"
                ;;
            pact__subcmd__help__subcmd__extension,list)
                cmd="pact__subcmd__help__subcmd__extension__subcmd__list"
                ;;
            pact__subcmd__help__subcmd__extension,uninstall)
                cmd="pact__subcmd__help__subcmd__extension__subcmd__uninstall"
                ;;
            pact__subcmd__help__subcmd__extension,update)
                cmd="pact__subcmd__help__subcmd__extension__subcmd__update"
                ;;
            pact__subcmd__help__subcmd__mock,create)
                cmd="pact__subcmd__help__subcmd__mock__subcmd__create"
                ;;
            pact__subcmd__help__subcmd__mock,list)
                cmd="pact__subcmd__help__subcmd__mock__subcmd__list"
                ;;
            pact__subcmd__help__subcmd__mock,shutdown)
                cmd="pact__subcmd__help__subcmd__mock__subcmd__shutdown"
                ;;
            pact__subcmd__help__subcmd__mock,shutdown-master)
                cmd="pact__subcmd__help__subcmd__mock__subcmd__shutdown__subcmd__master"
                ;;
            pact__subcmd__help__subcmd__mock,start)
                cmd="pact__subcmd__help__subcmd__mock__subcmd__start"
                ;;
            pact__subcmd__help__subcmd__mock,verify)
                cmd="pact__subcmd__help__subcmd__mock__subcmd__verify"
                ;;
            pact__subcmd__help__subcmd__pactflow,publish-provider-contract)
                cmd="pact__subcmd__help__subcmd__pactflow__subcmd__publish__subcmd__provider__subcmd__contract"
                ;;
            pact__subcmd__help__subcmd__plugin,disable)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__disable"
                ;;
            pact__subcmd__help__subcmd__plugin,enable)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__enable"
                ;;
            pact__subcmd__help__subcmd__plugin,env)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__env"
                ;;
            pact__subcmd__help__subcmd__plugin,install)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__install"
                ;;
            pact__subcmd__help__subcmd__plugin,list)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__list"
                ;;
            pact__subcmd__help__subcmd__plugin,remove)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__remove"
                ;;
            pact__subcmd__help__subcmd__plugin,repository)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__list,installed)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__list__subcmd__installed"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__list,known)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__list__subcmd__known"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__repository,add-all-plugin-versions)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__all__subcmd__plugin__subcmd__versions"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__repository,add-plugin-version)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__repository,list)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__list"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__repository,list-versions)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__list__subcmd__versions"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__repository,new)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__new"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__repository,validate)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__validate"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__repository,yank-version)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__yank__subcmd__version"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version,file)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__file"
                ;;
            pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version,git-hub)
                cmd="pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__git__subcmd__hub"
                ;;
            pact__subcmd__mock,create)
                cmd="pact__subcmd__mock__subcmd__create"
                ;;
            pact__subcmd__mock,help)
                cmd="pact__subcmd__mock__subcmd__help"
                ;;
            pact__subcmd__mock,list)
                cmd="pact__subcmd__mock__subcmd__list"
                ;;
            pact__subcmd__mock,shutdown)
                cmd="pact__subcmd__mock__subcmd__shutdown"
                ;;
            pact__subcmd__mock,shutdown-master)
                cmd="pact__subcmd__mock__subcmd__shutdown__subcmd__master"
                ;;
            pact__subcmd__mock,start)
                cmd="pact__subcmd__mock__subcmd__start"
                ;;
            pact__subcmd__mock,verify)
                cmd="pact__subcmd__mock__subcmd__verify"
                ;;
            pact__subcmd__mock__subcmd__help,create)
                cmd="pact__subcmd__mock__subcmd__help__subcmd__create"
                ;;
            pact__subcmd__mock__subcmd__help,help)
                cmd="pact__subcmd__mock__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__mock__subcmd__help,list)
                cmd="pact__subcmd__mock__subcmd__help__subcmd__list"
                ;;
            pact__subcmd__mock__subcmd__help,shutdown)
                cmd="pact__subcmd__mock__subcmd__help__subcmd__shutdown"
                ;;
            pact__subcmd__mock__subcmd__help,shutdown-master)
                cmd="pact__subcmd__mock__subcmd__help__subcmd__shutdown__subcmd__master"
                ;;
            pact__subcmd__mock__subcmd__help,start)
                cmd="pact__subcmd__mock__subcmd__help__subcmd__start"
                ;;
            pact__subcmd__mock__subcmd__help,verify)
                cmd="pact__subcmd__mock__subcmd__help__subcmd__verify"
                ;;
            pact__subcmd__pactflow,help)
                cmd="pact__subcmd__pactflow__subcmd__help"
                ;;
            pact__subcmd__pactflow,publish-provider-contract)
                cmd="pact__subcmd__pactflow__subcmd__publish__subcmd__provider__subcmd__contract"
                ;;
            pact__subcmd__pactflow__subcmd__help,help)
                cmd="pact__subcmd__pactflow__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__pactflow__subcmd__help,publish-provider-contract)
                cmd="pact__subcmd__pactflow__subcmd__help__subcmd__publish__subcmd__provider__subcmd__contract"
                ;;
            pact__subcmd__plugin,disable)
                cmd="pact__subcmd__plugin__subcmd__disable"
                ;;
            pact__subcmd__plugin,enable)
                cmd="pact__subcmd__plugin__subcmd__enable"
                ;;
            pact__subcmd__plugin,env)
                cmd="pact__subcmd__plugin__subcmd__env"
                ;;
            pact__subcmd__plugin,help)
                cmd="pact__subcmd__plugin__subcmd__help"
                ;;
            pact__subcmd__plugin,install)
                cmd="pact__subcmd__plugin__subcmd__install"
                ;;
            pact__subcmd__plugin,list)
                cmd="pact__subcmd__plugin__subcmd__list"
                ;;
            pact__subcmd__plugin,remove)
                cmd="pact__subcmd__plugin__subcmd__remove"
                ;;
            pact__subcmd__plugin,repository)
                cmd="pact__subcmd__plugin__subcmd__repository"
                ;;
            pact__subcmd__plugin__subcmd__help,disable)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__disable"
                ;;
            pact__subcmd__plugin__subcmd__help,enable)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__enable"
                ;;
            pact__subcmd__plugin__subcmd__help,env)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__env"
                ;;
            pact__subcmd__plugin__subcmd__help,help)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__plugin__subcmd__help,install)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__install"
                ;;
            pact__subcmd__plugin__subcmd__help,list)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__list"
                ;;
            pact__subcmd__plugin__subcmd__help,remove)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__remove"
                ;;
            pact__subcmd__plugin__subcmd__help,repository)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__list,installed)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__list__subcmd__installed"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__list,known)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__list__subcmd__known"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__repository,add-all-plugin-versions)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__all__subcmd__plugin__subcmd__versions"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__repository,add-plugin-version)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__repository,list)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__list"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__repository,list-versions)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__list__subcmd__versions"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__repository,new)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__new"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__repository,validate)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__validate"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__repository,yank-version)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__yank__subcmd__version"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version,file)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__file"
                ;;
            pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version,git-hub)
                cmd="pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__git__subcmd__hub"
                ;;
            pact__subcmd__plugin__subcmd__list,help)
                cmd="pact__subcmd__plugin__subcmd__list__subcmd__help"
                ;;
            pact__subcmd__plugin__subcmd__list,installed)
                cmd="pact__subcmd__plugin__subcmd__list__subcmd__installed"
                ;;
            pact__subcmd__plugin__subcmd__list,known)
                cmd="pact__subcmd__plugin__subcmd__list__subcmd__known"
                ;;
            pact__subcmd__plugin__subcmd__list__subcmd__help,help)
                cmd="pact__subcmd__plugin__subcmd__list__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__plugin__subcmd__list__subcmd__help,installed)
                cmd="pact__subcmd__plugin__subcmd__list__subcmd__help__subcmd__installed"
                ;;
            pact__subcmd__plugin__subcmd__list__subcmd__help,known)
                cmd="pact__subcmd__plugin__subcmd__list__subcmd__help__subcmd__known"
                ;;
            pact__subcmd__plugin__subcmd__repository,add-all-plugin-versions)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__all__subcmd__plugin__subcmd__versions"
                ;;
            pact__subcmd__plugin__subcmd__repository,add-plugin-version)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version"
                ;;
            pact__subcmd__plugin__subcmd__repository,help)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help"
                ;;
            pact__subcmd__plugin__subcmd__repository,list)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__list"
                ;;
            pact__subcmd__plugin__subcmd__repository,list-versions)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__list__subcmd__versions"
                ;;
            pact__subcmd__plugin__subcmd__repository,new)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__new"
                ;;
            pact__subcmd__plugin__subcmd__repository,validate)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__validate"
                ;;
            pact__subcmd__plugin__subcmd__repository,yank-version)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__yank__subcmd__version"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version,file)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__file"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version,git-hub)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__git__subcmd__hub"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version,help)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help,file)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help__subcmd__file"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help,git-hub)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help__subcmd__git__subcmd__hub"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help,help)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help,add-all-plugin-versions)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__all__subcmd__plugin__subcmd__versions"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help,add-plugin-version)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__plugin__subcmd__version"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help,help)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__help"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help,list)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__list"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help,list-versions)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__list__subcmd__versions"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help,new)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__new"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help,validate)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__validate"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help,yank-version)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__yank__subcmd__version"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__plugin__subcmd__version,file)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__plugin__subcmd__version__subcmd__file"
                ;;
            pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__plugin__subcmd__version,git-hub)
                cmd="pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__plugin__subcmd__version__subcmd__git__subcmd__hub"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        pact)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help broker pactflow completions extension plugin mock verifier stub help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker)
            opts="-o -h -V --output --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help --version publish list-latest-pact-versions get-pacts create-environment update-environment delete-environment describe-environment list-environments record-deployment record-undeployment record-release record-support-ended can-i-deploy can-i-merge create-or-update-pacticipant describe-pacticipant list-pacticipants create-webhook create-or-update-webhook delete-webhook test-webhook delete-branch create-version-tag delete-version-tag describe-version create-or-update-version generate-uuid provider-states ruby docker help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --output)
                    COMPREPLY=($(compgen -W "json text table pretty" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text table pretty" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__can__subcmd__i__subcmd__deploy)
            opts="-a -e -l -o -b -u -p -k -c -h --pacticipant --version --latest --tag --branch --main-branch --no-main-branch --skip-main-branch --ignore --to-environment --to --output --retry-while-unknown --retry-interval --dry-run --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --latest)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tag)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --no-main-branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --skip-main-branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --to-environment)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --to)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                --retry-while-unknown)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retry-interval)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__can__subcmd__i__subcmd__merge)
            opts="-b -u -p -k -a -e -o -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --pacticipant --version --output --retry-while-unknown --retry-interval --dry-run --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                --retry-while-unknown)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retry-interval)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__create__subcmd__environment)
            opts="-o -b -u -p -k -c -h --name --display-name --production --contact-name --contact-email-address --output --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --display-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contact-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contact-email-address)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text id" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text id" -- "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__pacticipant)
            opts="-b -u -p -k -o -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --name --display-name --main-branch --repository-url --output --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --display-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --main-branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --repository-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text" -- "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__version)
            opts="-b -u -p -k -a -e -t -o -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --pacticipant --version --branch --tag --output --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tag)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text" -- "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__webhook)
            opts="-b -u -p -k -X -H -d -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --uuid --request --header --data --user --consumer --consumer-label --provider --provider-label --description --contract-content-changed --contract-published --provider-verification-published --provider-verification-failed --provider-verification-succeeded --contract-requiring-verification-published --team-uuid --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --uuid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --request)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -X)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -H)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --data)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -d)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --user)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --consumer)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --consumer-label)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-label)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --description)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --team-uuid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__create__subcmd__version__subcmd__tag)
            opts="-b -u -p -k -a -e -t -g -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --pacticipant --version --tag --auto-create-version --tag-with-git-branch --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tag)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__create__subcmd__webhook)
            opts="-X -H -d -b -u -p -k -c -h --request --header --data --user --consumer --consumer-label --provider --provider-label --description --contract-content-changed --contract-published --provider-verification-published --provider-verification-failed --provider-verification-succeeded --contract-requiring-verification-published --team-uuid --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --request)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -X)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -H)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --data)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -d)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --user)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --consumer)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --consumer-label)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-label)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --description)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --team-uuid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__delete__subcmd__branch)
            opts="-b -u -p -k -a -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --branch --pacticipant --error-when-not-found --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --error-when-not-found)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__delete__subcmd__environment)
            opts="-b -u -p -k -c -h --uuid --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --uuid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__delete__subcmd__version__subcmd__tag)
            opts="-b -u -p -k -a -e -t -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --pacticipant --version --tag --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tag)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__delete__subcmd__webhook)
            opts="-b -u -p -k -c -h --uuid --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --uuid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__describe__subcmd__environment)
            opts="-o -b -u -p -k -c -h --uuid --output --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --uuid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text" -- "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__describe__subcmd__pacticipant)
            opts="-b -u -p -k -o -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --name --output --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text table" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text table" -- "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__describe__subcmd__version)
            opts="-b -u -p -k -a -e -l -c -o -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --pacticipant --version --latest --environment --deployed --released --ssl-certificate --skip-ssl-verification --ssl-trust-store --output --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --latest)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --environment)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__docker)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help start stop remove help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__docker__subcmd__help)
            opts="start stop remove help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__docker__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__docker__subcmd__help__subcmd__remove)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__docker__subcmd__help__subcmd__start)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__docker__subcmd__help__subcmd__stop)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__docker__subcmd__remove)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__docker__subcmd__start)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__docker__subcmd__stop)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__generate__subcmd__uuid)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__get__subcmd__pacts)
            opts="-b -u -p -k -c -o -h --provider --consumer --branch --latest --download --download-dir --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --output --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --provider)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --consumer)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --download-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help)
            opts="publish list-latest-pact-versions get-pacts create-environment update-environment delete-environment describe-environment list-environments record-deployment record-undeployment record-release record-support-ended can-i-deploy can-i-merge create-or-update-pacticipant describe-pacticipant list-pacticipants create-webhook create-or-update-webhook delete-webhook test-webhook delete-branch create-version-tag delete-version-tag describe-version create-or-update-version generate-uuid provider-states ruby docker help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__can__subcmd__i__subcmd__deploy)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__can__subcmd__i__subcmd__merge)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__environment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__or__subcmd__update__subcmd__pacticipant)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__or__subcmd__update__subcmd__version)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__or__subcmd__update__subcmd__webhook)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__version__subcmd__tag)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__create__subcmd__webhook)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__delete__subcmd__branch)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__delete__subcmd__environment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__delete__subcmd__version__subcmd__tag)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__delete__subcmd__webhook)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__describe__subcmd__environment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__describe__subcmd__pacticipant)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__describe__subcmd__version)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__docker)
            opts="start stop remove"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__docker__subcmd__remove)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__docker__subcmd__start)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__docker__subcmd__stop)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__generate__subcmd__uuid)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__get__subcmd__pacts)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__list__subcmd__environments)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__list__subcmd__latest__subcmd__pact__subcmd__versions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__list__subcmd__pacticipants)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__provider__subcmd__states)
            opts="list"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__provider__subcmd__states__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__publish)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__record__subcmd__deployment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__record__subcmd__release)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__record__subcmd__support__subcmd__ended)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__record__subcmd__undeployment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__ruby)
            opts="install start stop remove info"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__info)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__install)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__remove)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__start)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__ruby__subcmd__stop)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__test__subcmd__webhook)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__help__subcmd__update__subcmd__environment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__list__subcmd__environments)
            opts="-o -b -u -p -k -c -h --output --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --output)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__list__subcmd__latest__subcmd__pact__subcmd__versions)
            opts="-b -u -p -k -c -o -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --output --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__list__subcmd__pacticipants)
            opts="-b -u -p -k -o -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --output --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json table" -- "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__provider__subcmd__states)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help list help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__help)
            opts="list help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__help__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__provider__subcmd__states__subcmd__list)
            opts="-b -u -p -k -r -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --provider --branch --environment --json --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -r)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --environment)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__publish)
            opts="-b -u -p -k -a -r -t -o -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --validate --strict --consumer-app-version --branch --auto-detect-version-properties --tag --tag-with-git-branch --build-url --merge --output --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --consumer-app-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tag)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --build-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__record__subcmd__deployment)
            opts="-a -e -o -b -u -p -k -c -h --pacticipant --version --environment --application-instance --output --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --environment)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --application-instance)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__record__subcmd__release)
            opts="-a -e -o -b -u -p -k -c -h --pacticipant --version --environment --output --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --environment)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__record__subcmd__support__subcmd__ended)
            opts="-a -e -o -b -u -p -k -c -h --pacticipant --version --environment --output --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --environment)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__record__subcmd__undeployment)
            opts="-a -b -u -p -k -c -o -h --pacticipant --environment --application-instance --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --output --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --pacticipant)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --environment)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --application-instance)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text pretty" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help install start stop remove info help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__help)
            opts="install start stop remove info help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__info)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__install)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__remove)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__start)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__help__subcmd__stop)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__info)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__install)
            opts="-o -h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__remove)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__start)
            opts="-d -o -h --detach --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__ruby__subcmd__stop)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__test__subcmd__webhook)
            opts="-b -u -p -k -c -h --uuid --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --uuid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__broker__subcmd__update__subcmd__environment)
            opts="-o -b -u -p -k -c -h --uuid --name --display-name --production --contact-name --contact-email-address --output --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --uuid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --display-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contact-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contact-email-address)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text id" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text id" -- "${cur}"))
                    return 0
                    ;;
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__completions)
            opts="-d -h --dir --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help bash fish zsh powershell elvish"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -d)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help list install update uninstall help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__help)
            opts="list install update uninstall help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__help__subcmd__install)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__help__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__help__subcmd__uninstall)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__help__subcmd__update)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__install)
            opts="-h --all --version --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help pactflow-ai pact-legacy drift"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__list)
            opts="-h --installed --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__uninstall)
            opts="-h --all --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__extension__subcmd__update)
            opts="-h --all --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help)
            opts="broker pactflow completions extension plugin mock verifier stub help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker)
            opts="publish list-latest-pact-versions get-pacts create-environment update-environment delete-environment describe-environment list-environments record-deployment record-undeployment record-release record-support-ended can-i-deploy can-i-merge create-or-update-pacticipant describe-pacticipant list-pacticipants create-webhook create-or-update-webhook delete-webhook test-webhook delete-branch create-version-tag delete-version-tag describe-version create-or-update-version generate-uuid provider-states ruby docker"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__can__subcmd__i__subcmd__deploy)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__can__subcmd__i__subcmd__merge)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__environment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__pacticipant)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__version)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__or__subcmd__update__subcmd__webhook)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__version__subcmd__tag)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__create__subcmd__webhook)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__delete__subcmd__branch)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__delete__subcmd__environment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__delete__subcmd__version__subcmd__tag)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__delete__subcmd__webhook)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__describe__subcmd__environment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__describe__subcmd__pacticipant)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__describe__subcmd__version)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__docker)
            opts="start stop remove"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__docker__subcmd__remove)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__docker__subcmd__start)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__docker__subcmd__stop)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__generate__subcmd__uuid)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__get__subcmd__pacts)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__list__subcmd__environments)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__list__subcmd__latest__subcmd__pact__subcmd__versions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__list__subcmd__pacticipants)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__provider__subcmd__states)
            opts="list"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__provider__subcmd__states__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__publish)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__record__subcmd__deployment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__record__subcmd__release)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__record__subcmd__support__subcmd__ended)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__record__subcmd__undeployment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__ruby)
            opts="install start stop remove info"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__info)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__install)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__remove)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__start)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__ruby__subcmd__stop)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__test__subcmd__webhook)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__broker__subcmd__update__subcmd__environment)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__completions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__extension)
            opts="list install update uninstall"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__extension__subcmd__install)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__extension__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__extension__subcmd__uninstall)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__extension__subcmd__update)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__mock)
            opts="start list create verify shutdown shutdown-master"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__mock__subcmd__create)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__mock__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__mock__subcmd__shutdown)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__mock__subcmd__shutdown__subcmd__master)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__mock__subcmd__start)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__mock__subcmd__verify)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__pactflow)
            opts="publish-provider-contract"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__pactflow__subcmd__publish__subcmd__provider__subcmd__contract)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin)
            opts="list env install remove enable disable repository"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__disable)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__enable)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__env)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__install)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__list)
            opts="installed known"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__list__subcmd__installed)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__list__subcmd__known)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__remove)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository)
            opts="validate new add-plugin-version add-all-plugin-versions yank-version list list-versions"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__all__subcmd__plugin__subcmd__versions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version)
            opts="file git-hub"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__file)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 6 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__git__subcmd__hub)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 6 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__list__subcmd__versions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__new)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__validate)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__plugin__subcmd__repository__subcmd__yank__subcmd__version)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__stub)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__help__subcmd__verifier)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock)
            opts="-v -p -h -l --help --version --port --host --loglevel --no-term-log --no-file-log --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose start list create verify shutdown shutdown-master help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --loglevel)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__create)
            opts="-f -c -v -p -h -l --file --cors-preflight --specification --tls --help --version --port --host --loglevel --no-term-log --no-file-log --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --specification)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --loglevel)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__help)
            opts="start list create verify shutdown shutdown-master help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__help__subcmd__create)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__help__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__help__subcmd__shutdown)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__help__subcmd__shutdown__subcmd__master)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__help__subcmd__start)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__help__subcmd__verify)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__list)
            opts="-v -p -h -l --help --version --port --host --loglevel --no-term-log --no-file-log --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --loglevel)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__shutdown)
            opts="-i -m -v -p -h -l --mock-server-id --mock-server-port --help --version --port --host --loglevel --no-term-log --no-file-log --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --mock-server-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -i)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --mock-server-port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -m)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --loglevel)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__shutdown__subcmd__master)
            opts="-k -v -p -h -l --server-key --period --help --version --port --host --loglevel --no-term-log --no-file-log --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --server-key)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --period)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --loglevel)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__start)
            opts="-o -v -p -h -l --output --base-port --server-key --help --version --port --host --loglevel --no-term-log --no-file-log --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --base-port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --server-key)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --loglevel)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__mock__subcmd__verify)
            opts="-i -m -v -p -h -l --mock-server-id --mock-server-port --help --version --port --host --loglevel --no-term-log --no-file-log --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --mock-server-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -i)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --mock-server-port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -m)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --loglevel)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__pactflow)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help publish-provider-contract help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__pactflow__subcmd__help)
            opts="publish-provider-contract help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__pactflow__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__pactflow__subcmd__help__subcmd__publish__subcmd__provider__subcmd__contract)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__pactflow__subcmd__publish__subcmd__provider__subcmd__contract)
            opts="-b -u -p -k -a -t -r -o -c -h --broker-base-url --broker-username --broker-password --broker-token --custom-header --retries --provider --provider-app-version --branch --tag --specification --content-type --verification-success --no-verification-success --verification-exit-code --verification-results --verification-results-content-type --verification-results-format --verifier --verifier-version --build-url --auto-detect-version-properties --tag-with-git-branch --output --ssl-certificate --skip-ssl-verification --ssl-trust-store --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --broker-base-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-username)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -k)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --custom-header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-app-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tag)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --specification)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --content-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verification-exit-code)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verification-results)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verification-results-content-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verification-results-format)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verifier)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verifier-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --build-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json text" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json text" -- "${cur}"))
                    return 0
                    ;;
                --ssl-certificate)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ssl-trust-store)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin)
            opts="-y -d -t -v -h --yes --debug --trace --version --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help list env install remove enable disable repository help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__disable)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__enable)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__env)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help)
            opts="list env install remove enable disable repository help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__disable)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__enable)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__env)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__install)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__list)
            opts="installed known"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__list__subcmd__installed)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__list__subcmd__known)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__remove)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository)
            opts="validate new add-plugin-version add-all-plugin-versions yank-version list list-versions"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__all__subcmd__plugin__subcmd__versions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version)
            opts="file git-hub"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__file)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 6 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__git__subcmd__hub)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 6 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__list__subcmd__versions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__new)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__validate)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__help__subcmd__repository__subcmd__yank__subcmd__version)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__install)
            opts="-t -y -s -v -h --source-type --yes --skip-if-installed --version --skip-load --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --source-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -v)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__list)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help installed known help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__list__subcmd__help)
            opts="installed known help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__list__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__list__subcmd__help__subcmd__installed)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__list__subcmd__help__subcmd__known)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__list__subcmd__installed)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__list__subcmd__known)
            opts="-s -h --show-all-versions --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__remove)
            opts="-y -h --yes --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help validate new add-plugin-version add-all-plugin-versions yank-version list list-versions help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__all__subcmd__plugin__subcmd__versions)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help file git-hub help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__file)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__git__subcmd__hub)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help)
            opts="file git-hub help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help__subcmd__file)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 6 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help__subcmd__git__subcmd__hub)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 6 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__add__subcmd__plugin__subcmd__version__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 6 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help)
            opts="validate new add-plugin-version add-all-plugin-versions yank-version list list-versions help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__all__subcmd__plugin__subcmd__versions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__plugin__subcmd__version)
            opts="file git-hub"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__plugin__subcmd__version__subcmd__file)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 6 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__add__subcmd__plugin__subcmd__version__subcmd__git__subcmd__hub)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 6 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__list__subcmd__versions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__new)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__validate)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__help__subcmd__yank__subcmd__version)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 5 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__list)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__list__subcmd__versions)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__new)
            opts="-o -h --overwrite --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__validate)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__plugin__subcmd__repository__subcmd__yank__subcmd__version)
            opts="-h --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__stub)
            opts="-l -f -d -e -u -b -t -p -o -s -w -v -h --loglevel --file --dir --extension --url --broker-url --user --token --port --cors --cors-referer --insecure-tls --provider-state --provider-state-header-name --empty-provider-state --consumer-name --provider-name --retries --watch --version --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --loglevel)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                --file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -d)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --extension)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --user)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-state)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -s)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-state-header-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --consumer-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        pact__subcmd__verifier)
            opts="-v -l -j -x -f -d -u -b -t -h -p -n -H -s -c --help --version --loglevel --pretty-log --full-log --compact-log --json --junit --html --xslt --no-color --no-colour --file --dir --url --broker-url --webhook-callback-url --ignore-no-pacts-error --user --password --token --hostname --port --transport --transports --provider-name --base-path --request-timeout --header --disable-ssl-verification --state-change-url --state-change-as-query --state-change-teardown --filter-description --filter-state --filter-no-state --filter-consumer --publish --provider-version --build-url --provider-tags --provider-branch --consumer-version-tags --consumer-version-selectors --enable-pending --include-wip-pacts-since --retries --exit-on-first-error --last-failed --enable-otel --enable-otel-logs --enable-otel-traces --otel-exporter --otel-exporter-endpoint --otel-exporter-protocol --log-level --verbose"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --loglevel)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -W "error warn info debug trace none" -- "${cur}"))
                    return 0
                    ;;
                --json)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -j)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --junit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -x)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --html)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --xslt)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -d)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --broker-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --webhook-callback-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --user)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --hostname)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --transport)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --transports)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -n)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --base-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --request-timeout)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --header)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -H)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --state-change-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -s)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --filter-description)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --filter-state)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --filter-consumer)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --build-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-tags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provider-branch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --consumer-version-tags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --consumer-version-selectors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --include-wip-pacts-since)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-endpoint)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --otel-exporter-protocol)
                    COMPREPLY=($(compgen -W "http http/protobuf" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "off none error warn info debug trace" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
    esac
}

if [[ "${BASH_VERSINFO[0]}" -eq 4 && "${BASH_VERSINFO[1]}" -ge 4 || "${BASH_VERSINFO[0]}" -gt 4 ]]; then
    complete -F _pact -o nosort -o bashdefault -o default pact
else
    complete -F _pact -o bashdefault -o default pact
fi
