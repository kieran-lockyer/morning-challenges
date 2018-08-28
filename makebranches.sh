for f in ~/projects/morning-challenges/term_one/*.rb
do
  name=$(basename ${f%.*})
#  echo "$name"
  git checkout -b $name
  cp $f .
  git add .
  git commit -m "Initial commit - $name"
  git push -u origin $name
done

