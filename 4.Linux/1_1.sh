#!/bib/bash
if [[ "$(whoami)" == "root" ]]; then
echo "This script started \"root\""
else
echo "This script was not started by \"root\""
fi
exit 0
