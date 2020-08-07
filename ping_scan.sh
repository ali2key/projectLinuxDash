is_alive_ping()
{
	ping -c 1 $1 > /dev/null
	[ $? -eq 0 ] && echo Node with IP: $i is up.
}

for i in 10.243.55.{1..255}
	do
		is_alive_ping $i >> ping_scan.html & disown
	done
	

wc -l < /var/lib/arpwatch/arp.dat > UrzadzeniaOgolem.html
wc -l < /root/Desktop/Dashboard_Security/ping_scan.html > UrzadzeniaAktywne.html
