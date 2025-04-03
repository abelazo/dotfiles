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

function github::get_prs_by_repo {
  local organization=${1}
  local repository=${2}
  local state=${3}
  local pages=${4}
  current_page=1
  while [ ${current_page} -le ${pages} ]; do
    prs=$(gh api -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" "/repos/${organization}/${repository}/pulls?state=${state}&per_page=100&page=${current_page}")
    jq -r '.[] | [.number, (.title | (gsub(",";""))), .state, .created_at, .closed_at, .merged_at, if (.closed_at | length) != 0 then ((((.closed_at | strptime("%Y-%m-%dT%H:%M:%SZ") | mktime) - (.created_at | strptime("%Y-%m-%dT%H:%M:%SZ") | mktime)) / 3600) | floor) else null end] | @csv' <<<${prs}
    current_page=$((current_page+1))
  done
}

function github::get_prs_by_reviewer {
  local author=${1}
  local limit=${2}
  gh search prs --reviewed-by ${author} --limit ${limit} --state closed --json author,createdAt,closedAt,commentsCount,repository,number | jq -r '.[] | [(.repository.name + " (#" + (.number | tostring) + ")"), .author.login, .commentsCount, .createdAt, .closedAt, ((((.closedAt | strptime("%Y-%m-%dT%H:%M:%SZ") | mktime) - (.createdAt | strptime("%Y-%m-%dT%H:%M:%SZ") | mktime)) / 3600) | floor)] | @csv'
}
