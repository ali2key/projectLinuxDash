is_alive_ping()
{
	ping -c 1 $1 > /dev/null
	[ $? -eq 0 ] && echo Node with IP: $i is up.
}

for i in 10.243.55.{1..255}
	do
		is_alive_ping $i >> newoutput13.txt & disown
	done
	

ACTIVE="$(wc -l < /var/lib/arpwatch/arp.dat)"
CONNECTED="$(wc -l < /root/Desktop/newoutput12.txt)"
