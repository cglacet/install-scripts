if ! command -v brew 2>&1 >/dev/null; then 
    echo "Installing homebrew (https://brew.sh/)"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi