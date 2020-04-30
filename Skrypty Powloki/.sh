if [ -f /var/log/messages ]
  then 
    echo "/var/log/messages exists."
fi

-----------------------------------------------------------------------------------------------------------------------------------------------

if [ "$(whoami)" != 'root' ]; then
       echo "You are not logged in as the root user."
else
       echo "You are currently logged in as the root user."
fi

-----------------------------------------------------------------------------------------------------------------------------------------------

read -p "Enter a value larger than 10 : " n
if test $n -gt 10
then
    echo "$n is a larger value than 10."
fi

-----------------------------------------------------------------------------------------------------------------------------------------------

for file in $( ls );
do 
    echo Filename: $file
done

-----------------------------------------------------------------------------------------------------------------------------------------------

while true 
do
clear
echo
echo "MENU"
echo "---------------"
echo
echo "1 - Show IP adresses for $HOSTNAME"
echo
echo "2 - Quit"
echo
echo "Enter choice:"
read selection
echo
case $selection in
        1) ifconfig em0 | grep inet; read junk;;
        2) clear; exit;;
esac
done




