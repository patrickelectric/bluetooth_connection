#argumento 1 = $1
if [ $# -lt 1 ]; then
	echo "scan for bluetooths"
	hcitool scan
	echo " "
	echo "The program need the mac address of the bluetooth"
	echo "sh bluetooth_connect.sh 00:00:00:00:00:00"
	exit 1
fi

echo "connecting.."
sudo rfcomm connect 0 $1 1


