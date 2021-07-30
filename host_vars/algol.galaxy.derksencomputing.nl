ansible_become_method: doas
#We need to set the private ip-address in the ipa-server so we override the public ip-address
ansible_default_ipv4.address: 172.16.1.1
mailserver_type: forwarder
external_fqdn: blackhole.derksencomputing.nl
dns_listen_ip: 149.210.150.253
primary_server: 45.83.232.124
secondary_zones:
  - edunix.nl
  - epsilix.com
  - epsilix.nl
  - jdcomputing.nl
  - jellederksen.nl
  - kuberoot.nl
  - opencomputing.nl
  - derksencomputing.nl
