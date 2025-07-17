# github actions keeps all, even failed runs.

# REF:   https://blog.oddbit.com/post/2022-09-22-delete-workflow-runs/

"repos/jimrohstein/docs/actions/runs/ID
gh run list --json databaseId \    # lists by run id (multiple)
   -q '.[].databaseId' | \ 
    xargs -IID gh api \
    "repos/$(gh repo view --json nameWithOwner -q .nameWithOwner)/actions/runs/ID" \
    -X DELETE
