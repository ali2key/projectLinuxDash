#if [ -z "$1" ]; then
	#echo
	#echo usage: $0 netowrk-interface
	#echo
	#echo $0 br0
	#echo
	#echo shows packets-per-second
	#exit
#fi

#IF=$br0

while true
do
	R1=`cat /sys/class/net/br0/statistics/rx_packets`
	T1=`cat /sys/class/net/br0/statistics/tx_packets`
	sleep 1
	R2=`cat /sys/class/net/br0/statistics/rx_packets`
	T2=`cat /sys/class/net/br0/statistics/tx_packets`
	TXPPS=`expr $T2 - $T1`
	RXPPS=`expr $R2 - $R1`
	echo "tx br0: $TXPPS pkts/s rx: br0: $RXPPS pkts/s"
done

