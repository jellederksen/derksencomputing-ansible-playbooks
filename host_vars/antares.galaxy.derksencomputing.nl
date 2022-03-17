ansible_become_method: doas
mailserver_type: forwarder
external_hostname: quasar.derksencomputing.nl
external_mailname: quasar.derksencomputing.nl
internal_mailname: antares.galaxy.derksencomputing.nl
dns_listen_ip: 136.144.215.240
primary_server: 149.210.150.253

secondary_zones:
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
    - cn: quasar.derksencomputing.nl
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      country_name: NL
      csr_path: /etc/ssl/quasar.derksencomputing.nl.csr
      key_path: /etc/ssl/private/quasar.derksencomputing.nl.key
      crt_path: /etc/ssl/quasar.derksencomputing.nl.crt
  self_signed_certificates:
    - cn: antares.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/ssl/antares.galaxy.derksencomputing.nl.csr
      key_path: /etc/ssl/private/antares.galaxy.derksencomputing.nl.key
      crt_path: /etc/ssl/antares.galaxy.derksencomputing.nl.crt
