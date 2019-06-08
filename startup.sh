iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -o ens33 -j MASQUERADE
route add -net 202.202.32.0/20 gw 172.22.161.1
route add -net 172.16.0.0/12 gw 172.22.161.1
route add -net 172.32.0.0/15 gw 172.22.161.1
route add -net 211.83.208.0/20 gw 172.22.161.1
route add -net 222.177.140.0/25 gw 172.22.161.1
route add -net 219.153.62.64/26 gw 172.22.161.1
route add -net 10.10.10.0/24 gw 172.22.161.1

