ansible_become_method: doas
#We need to set the private ip-address in the ipa-server so we override the public ip-address
ansible_default_ipv4.address: 172.16.1.1
mailserver_type: forwarder
external_hostname: blackhole.derksencomputing.nl
external_mailname: blackhole.derksencomputing.nl
internal_mailname: algol.galaxy.derksencomputing.nl
dns_listen_ip: 149.210.150.253
secondary_server: 136.144.215.240
primary_zones:
  - derksencomputing.com
  - derksencomputing.nl
  - edunix.nl
  - epsilix.com
  - epsilix.nl
  - jdcomputing.nl
  - jellederksen.nl
  - kubebackup.eu
  - kubebackup.nl
  - kuberoot.nl
  - opencomputing.nl
x509_certificates:
  letsencrypt_signed_certificates:
    - cn: blackhole.derksencomputing.nl
      alt_names:
        - derksencomputing.com
        - derksencomputing.nl
        - edunix.nl
        - epsilix.com
        - epsilix.nl
        - jdcomputing.nl
        - jellederksen.nl
        - kubebackup.eu
        - kubebackup.nl
        - kuberoot.nl
        - opencomputing.nl
        - www.derksencomputing.com
        - www.derksencomputing.nl
        - www.edunix.nl
        - www.epsilix.com
        - www.epsilix.nl
        - www.jdcomputing.nl
        - www.jellederksen.nl
        - www.kubebackup.eu
        - www.kubebackup.nl
        - www.kuberoot.nl
        - www.opencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/ssl/blackhole.derksencomputing.nl.csr
      key_path: /etc/ssl/private/blackhole.derksencomputing.nl.key
      crt_path: /etc/ssl/blackhole.derksencomputing.nl.crt
  self_signed_certificates:
    - cn: algol.galaxy.derksencomputing.nl
      alt_names:
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/ssl/algol.galaxy.derksencomputing.nl.csr
      key_path: /etc/ssl/private/algol.galaxy.derksencomputing.nl.key
      crt_path: /etc/ssl/algol.galaxy.derksencomputing.nl.crt
