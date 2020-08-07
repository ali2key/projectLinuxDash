grep -rl 'critical error' /usr/share/sniper/loot > /root/Desktop/critical.html
grep -rl 'high error' /usr/share/sniper/loot > /root/Desktop/high.html

CRITICAL="$(wc -l < /root/Desktop/critical.html > CritNum.html)"
HIGH="$(wc -l < /root/Desktop/high.html > HighNum.html)"
