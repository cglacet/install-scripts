if ! command -v git 2>&1 >/dev/null; then 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/cglacet/install-scripts/master/osx/install-brew.sh)"
    echo "Installing Git"
    brew install git
fi