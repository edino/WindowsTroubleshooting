netsh interface ipv4 set address name="Ethernet" static 192.168.2.23 255.255.255.0 192.168.2.1
netsh interface ipv4 add dnsserver "Ethernet" 8.8.8.8 index=1
netsh interface ipv4 add dnsserver "Ethernet" 1.1.1.1 index=2