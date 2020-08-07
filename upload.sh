INT="2" 

while true
do
	R1=`cat /sys/class/net/eth0/statistics/rx_bytes`
	T1=`cat /sys/class/net/eth0/statistics/tx_bytes`
	sleep $INT
	R2=`cat /sys/class/net/eth0/statistics/rx_bytes`
	T2=`cat /sys/class/net/eth0/statistics/tx_bytes`
	TXBPS=`expr $T2 - $T1`
	RXBPS=`expr $R2 - $R1`
	TXKBPS=`expr $TXBPS / 1024`