#argumento 1 = $1
echo "scaneando bluetooths"
hcitool scan

if [ $# -lt 1 ]; then
	echo " "
	echo "The program need de mac address of the bt"
	echo "sh bluetooth_connect.sh 00:00:00:00:00:00"
	exit 1
fi

echo "connectando bluetooth"
sudo rfcomm connect 0 $1 1


