echo  "welcpome";

status=$(( RANDOM % 2 ));
if (( $status == 0)); then
    echo "heads";
else 
    echo "tails";
fi