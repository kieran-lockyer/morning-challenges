echo "Getting morning challenge ..."
git add -q .
git stash -q
git pull -q --no-edit morning master
git stash -q pop
echo "Done!"
ls
