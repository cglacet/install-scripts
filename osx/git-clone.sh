/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/cglacet/install-scripts/master/osx/install-git.sh)"

install_dir=$1
git_url=$2

mkdir -p $install_dir
cd $install_dir

if ! [ -d .git ]; then
    echo "That's the first time you run this script."
    echo "Retreiving source from Github (${blue}${git_url}${nc})."
    git clone -q $git_url . &> /dev/null
fi

# https://stackoverflow.com/a/3278427/1720199
LOCAL=$(git rev-parse @)
BASE=$(git merge-base @ "$UPSTREAM")

if [ $LOCAL = $BASE ]; then 
    echo "Updating source from Github (${blue}${git_url}${nc})."
    git pull origin master &> /dev/null
fi