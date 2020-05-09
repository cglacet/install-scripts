declare -a py_min_required=(3 6)
declare -a py_version=($(python --version | cut -d' ' -f2 | tr '.' '\n'))
function join_by { local IFS="$1"; shift; echo "$*"; }
if [ ${py_version[0]} -lt ${py_min_required[0]} ] || [ ${py_version[1]} -lt ${py_min_required[1]} ]; then 
    echo "This script requires python ≥ $(join_by $py_min_required) to work your's is ($(python --version))."
    echo "Would you like to install a recent version of python?"
    select yn in "Yes" "No"; do
        case $yn in
            Yes ) brew install pyenv; pyenv install 3.7.7; pyenv local 3.7.7; break;;
            No ) exit 1;;
        esac
    done
fi