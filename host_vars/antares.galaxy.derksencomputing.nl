ansible_ssh_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/antares.galaxy.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:443')['ansible'] }}"
ansible_become_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/antares.galaxy.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:443')['ansible'] }}"
ansible_become_method: doas
mailserver_type: forwarder
external_hostname: quasar.derksencomputing.nl
external_mailname: quasar.derksencomputing.nl
internal_mailname: antares.galaxy.derksencomputing.nl
dns_listen_ip: 46.23.93.162
primary_server: 46.23.93.156

secondary_zones:
  - derksencomputing.nl
  - jellederksen.nl
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
      owner: root
      group: wheel

