#!/bin/bash
echo "Bind9 check"
named-checkconf || echo "ERRO no BIND"
named-checkzone cypherbaron.local /etc/bind/cypherbaron.local.forward
named-checkzone 10.168.192.in-addr.arpa /etc/bind/cypherbaron.local.reverse
systemctl status bind9.service

echo "DHCP check"
dhcpd -t -cf /etc/dhcp/dhcpd.conf || echo "ERRO DHCPv4"
dhcpd -6 -t -cf /etc/dhcp/dhcpd6.conf || echo "ERRO DHCPv6"
systemctl status isc-dhcp-server.service
root@DebianServer:/usr/local/secops# cat checkconf.sh
#!/bin/bash
echo "Bind9 check"
named-checkconf || echo "ERRO no BIND"
named-checkzone cypherbaron.local /etc/bind/cypherbaron.local.forward
named-checkzone 10.168.192.in-addr.arpa /etc/bind/cypherbaron.local.reverse
systemctl status bind9.service

echo "DHCP check"
dhcpd -t -cf /etc/dhcp/dhcpd.conf || echo "ERRO DHCPv4"
dhcpd -6 -t -cf /etc/dhcp/dhcpd6.conf || echo "ERRO DHCPv6"
systemctl status isc-dhcp-server.service