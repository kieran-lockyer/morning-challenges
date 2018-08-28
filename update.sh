echo "Getting morning challenge ..."
git add .
git stash
git fetch https://github.com/CoderAcademy-BRI/morning-challenges-term1.git
git checkout FETCH_HEAD -- $1*
git checkout stash -- .
echo "Done!"
ls
