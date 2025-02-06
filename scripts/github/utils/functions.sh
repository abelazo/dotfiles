function github::wait_for_workflow {
  worflow_file=${1}

  c=1
  status=$(gh run list --workflow ${workflow_file} --json status -q '.[0].status')
  while [[ "${status}" != "queued" ]]; do
    status=$(gh run list --workflow ${workflow_file} --json status -q '.[0].status')
    ((c++)) && ((c==10)) && break
    sleep 1
  done
}

function github::get_prs {
  state=${1}
  paginate_arg=${2}
  prs=$(gh api ${paginate_arg} -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" "/repos/easyjet-dev/ejh-web-digital/pulls?state=${state}&per_page=100")
  jq -r '.[] | [.number, .title, .state, .created_at, .closed_at, .merged_at, if (.closed_at | length) != 0 then ((((.closed_at | strptime("%Y-%m-%dT%H:%M:%SZ") | mktime) - (.created_at | strptime("%Y-%m-%dT%H:%M:%SZ") | mktime)) / 3600) | floor) else null end] | @csv' <<<${prs}
}
