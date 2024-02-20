function wait_for_workflow {
  worflow_file=${1}

  c=1
  status=$(gh run list --workflow ${workflow_file} --json status -q '.[0].status')
  while [[ "${status}" != "queued" ]]; do
    status=$(gh run list --workflow ${workflow_file} --json status -q '.[0].status')
    ((c++)) && ((c==10)) && break
    sleep 1
  done
}
