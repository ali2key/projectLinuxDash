echo -e ' \t\t\t\t\t\t\t    ' $(uptime -p)
echo
echo -e ' Ilość urządzeń ogółem podłączonych do sieci:' $(cat /root/Desktop/Dashboard_Security/UrzadzeniaOgolem.html)
echo
echo -e ' Ilość aktywnych urządzeń w sieci:' $(cat /root/Desktop/Dashboard_Security/UrzadzeniaAktywne.html)
echo
echo
echo
echo
echo
echo -e ' Zagrożeń krytycznych:' $(cat /root/Desktop/Dashboard_Security/CritNum.html)
echo
echo -e ' Zagrożeń wysokich:' $(cat /root/Desktop/Dashboard_Security/HighNum.html)
echo
echo -e ' \t\t\t     Zużycie łącza:' $(cat /root/Desktop/Dashboard_Security/netban.html)
