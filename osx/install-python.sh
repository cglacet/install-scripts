if ! command -v python &> /dev/null; then 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/cglacet/install-scripts/master/osx/install-brew.sh)"
    echo "Installing Python"
    brew install python
fi