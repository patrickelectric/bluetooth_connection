echo "scan bluetooth 00:13:01:08:15:83.."
hcitool scan
echo "connection with  bluetooth.."
sudo rfcomm connect 0 00:13:01:08:15:83 1
echo "checking.."
sdptool browse 00:13:01:08:15:83


