# Setup git remotes for both overleaf and github

# Remotes
overleaf=""
github=""

git remote | xargs -n1 git remote remove

# Also push to overleaf
git remote rm origin &> /dev/null
git config remote.origin.url &> /dev/null || git remote add origin $overleaf
git remote set-url origin --push --add $overleaf
git remote set-url origin --push --add $github

git config remote.overleaf.url &> /dev/null || git remote add overleaf $overleaf
git config remote.github.url &> /dev/null || git remote add github $github

# Remote tracking
git fetch overleaf
git fetch github
git branch --set-upstream-to=overleaf/master master
