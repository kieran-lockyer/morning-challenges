# Script to pull the morning challenge and merge to master
# Pass the branch name as the first param, eg. ./get-morning-challenge.sh 07_fib_seq_01.rb
echo "Getting morning challenge $1 ..."
# Make sure you're on master branch
git checkout master
# Sync master:
git add . && git commit -m "sync master" && git push -f origin master
# checkout/create challenge branch
git checkout -b $1
# pull morning challenge
git pull --no-edit --allow-unrelated-histories morning $1
# if any conflicts:
git add . && git commit -m "resolve conflicts"
# merge to your master
git checkout master
git merge $1
git push -f origin master
# delete the challenge branch
git branch -d $1
echo "Done!"
ls