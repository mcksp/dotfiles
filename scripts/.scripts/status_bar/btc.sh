resp=$(curl -s https://api.coinmarketcap.com/v2/ticker/1/?convert=USD)
echo "${resp}" | grep price | sed 's/[^0-9.]*//g' | awk '{ printf("Ƀ %.2f$", $1);}'
procent=$(echo "${resp}" | grep percent_change_24h | sed 's/24h//g' | sed 's/[^0-9.-]*//g')
printf " %.2f%%\n" $procent
echo
if [[ $procent == -* ]] ; then
    echo \#FF2222
else
    echo \#33FF33
fi
