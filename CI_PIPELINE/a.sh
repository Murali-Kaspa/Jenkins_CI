baseCommit=$(git merge-base origin/main HEAD)
                    echo "Base Commit: $baseCommit"

                    git diff --name-only --diff-filter=AMR ${baseCommit}..HEAD
