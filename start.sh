DATA=$(date | awk '{print $2, $3, $6, "года"}')
IP=$(ip route get 1 | awk '{print $7}')
if [ -n "$1" ]
then
echo "Сегодня $DATA"
else
echo "ИП адрес первого интерфейса $IP"
fi
