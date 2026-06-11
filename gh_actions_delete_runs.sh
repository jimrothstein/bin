# github actions keeps all, even failed runs.

# REF:   https://blog.oddbit.com/post/2022-09-22-delete-workflow-runs/

# Deletes all runs EXCEPT the most recent
# xargs says "for every IID, run gh api .... 
gh run list --json databaseId \
  -q '.[1:] | .[].databaseId' | \
  xargs -IID gh api \
    "repos/$(gh repo view --json nameWithOwner -q .nameWithOwner)/actions/runs/ID" \
    -X DELETE


# Deletes ALL the runs
#   -q '.[].databaseId' | \ 
