echo  "welcpome";

echo "enter number of trails "; read numberOfTrails;
echo "enter number of combinetion "; read combinetionType;
declare -A combinetionsCount;
combinetionsCount["heads"]=0;
combinetionsCount["tails"]=0;
persentageOfHeadsCombinetion=0;
persentageOfTailsCombinetion=0;
declare -A combinetionsList;
temp=1;
for (( counter=0; counter<$numberOfTrails; counter++))
do
    status=$(( RANDOM % 2 ));
    count=1;
    if (( $status  == 0)); then
        combo="heads";
    else
        combo="tails";
    fi
    tempCombo=$combo;
    for (( i=1; i<=$combinetionType; i++ ))  
    do
        status2=$(( RANDOM % 2 ));
        if (( $status == $status2 )); then
            ((count++));
            combo="$combo,$tempCombo";
        else
            break;
        fi
    done
    if (( $count == $combinetionType && $status == 0)); then
        echo "heads";
        combinetionsList[$temp]=$combo;
        temp=$(($temp+1));
        combinetionsCount["heads"]=$(( ${combinetionsCount[heads]} + 1));
    elif (( $count == $combinetionType )); then
        echo "tails";
        combinetionsList[$temp]=$combo;
        combinetionsCount["tails"]=$(( ${combinetionsCount[tails]} + 1));
        temp=$(($temp+1));
    fi
done
persentageOfHeadsCombinetion=$(( $(( ${combinetionsCount[heads]} * 100 )) / $numberOfTrails ));
persentageOfTailsCombinetion=$(( $(( ${combinetionsCount[tails]} * 100 )) / $numberOfTrails ));
# out put
echo $persentageOfHeadsCombinetion;
echo $persentageOfTailsCombinetion;
echo ${combinetionsList[@]};
