#!/usr/bin/env zsh

set -e

code_dirs=("$HOME/code"/*)

include_dir=(
  "$HOME/dotfiles"
)

directory_list=("${code_dirs[@]}" "${include_dir[@]}")

exclude_dir=(
  "$HOME/code/git_project"
  "$HOME/code/LLM_aNCA"
  "$HOME/code/palmer_penguins"
  "$HOME/code/python_project"
  "$HOME/code/querychat_project"
  "$HOME/code/stbl"
)

is_excluded() {
  local dir="$1"
  for excl in "$exclude_dir[@]"; do
    [[ "$dir" == "$excl" ]] && return 0
  done
  return 1
}

for dir in "$directory_list[@]"; do
  if [[ -d "$dir" ]]; then
    if [[ -d "$dir/.git" ]]; then
      if is_excluded "$dir"; then
        echo "Skipping excluded directory: $dir"
      else
        echo "Processing git repository: $dir"
        cd "$dir"
        git add .
        if [[ -z $(git status --porcelain) ]]; then
          echo "No changes to commit in $dir"
        else
          git commit -m "WIP" || { echo "Error committing in $dir"; exit 1 }
          git push || { echo "Error pushing in $dir"; exit 1 }
        fi
      fi
    else
      echo "Skipping non-git directory: $dir"
    fi
  else
    echo "Directory does not exist: $dir"
  fi
done

echo "Done!"
