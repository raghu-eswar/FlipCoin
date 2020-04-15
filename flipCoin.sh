echo  "welcpome";

declare -A combinetions;
numberOfTrails=100;
combinetions["heads"]=0;
combinetions["tails"]=0;
persentageOfHeadsCombinetion=0;
persentageOfTailsCombinetion=0;

for (( counter=0; counter<$numberOfTrails; counter++))
do
    status=$(( RANDOM % 2 ));
    if (( $status == 0)); then
        echo "heads";
        combinetions["heads"]=$(( ${combinetions[heads]} + 1));
    else 
        echo "tails";
        combinetions["tails"]=$(( ${combinetions[tails]} + 1));
    fi
done

persentageOfHeadsCombinetion=$(( $(( ${combinetions[heads]} * 100 )) / $numberOfTrails ));
persentageOfTailsCombinetion=$(( $(( ${combinetions[tails]} * 100 )) / $numberOfTrails ));
echo $persentageOfHeadsCombinetion;
echo $persentageOfTailsCombinetion;