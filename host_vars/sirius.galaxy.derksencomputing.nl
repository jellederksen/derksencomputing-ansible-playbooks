ansible_become_method: doas
external_fqdn: wormhole.derksencomputing.nl
ntp_time_server: True
recursive_dns_server: True
dns_listen_ip: 127.0.0.1@10053
primary_zones:
  - galaxy.derksencomputing.nl
  - 0.0.10.in-addr.arpa
  - 1.0.10.in-addr.arpa
  - 0.16.172.in-addr.arpa
  - 1.16.172.in-addr.arpa
  - 0.168.192.in-addr.arpa
  - 2.16.172.in-addr.arpa
