# change dirs to _harp if not already in there
if [ ${PWD##*/} != "_harp" ]; then
  cd _harp
fi

# source is the current directory and the target the parent directory
harp compile ./ ../

# files starting with _ are not copied to target. copy _README and rename
cp _README.md ../
cd ..
mv _README.md README.md

# commit to the repo and push to github
git add .
git commit -m "Compiled via deploy script."
git push
