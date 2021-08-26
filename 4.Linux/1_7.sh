
#!/bin/bash
M=$1
K=1609.344
D=$(bc<<<"scale=3;$M/$K")
echo "D: $D"
