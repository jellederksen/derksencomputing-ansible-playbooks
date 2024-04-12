ansible_ssh_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/algol.galaxy.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:443')['ansible'] }}"
ansible_become_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/algol.galaxy.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:443')['ansible'] }}"
ansible_become_method: doas
#We need to set the private ip-address in the ipa-server so we override the public ip-address
ansible_default_ipv4.address: 172.16.1.1
mailserver_type: forwarder
external_hostname: blackhole.derksencomputing.nl
external_mailname: blackhole.derksencomputing.nl
internal_mailname: algol.galaxy.derksencomputing.nl
dns_listen_ip: 46.23.93.156
secondary_server: 46.23.93.162
primary_zones:
  - derksencomputing.nl
  - jellederksen.nl
x509_certificates:
  letsencrypt_signed_certificates:
    - cn: blackhole.derksencomputing.nl
      alt_names:
        - derksencomputing.nl
        - jellederksen.nl
        - www.derksencomputing.nl
        - www.jellederksen.nl
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
      owner: root
      group: wheel

