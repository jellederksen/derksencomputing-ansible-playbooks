ansible_python_interpreter: /usr/bin/python3.6
ansible_become_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/alnitak.galaxy.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:443')['ansible'] }}"
ansible_ssh_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/alnitak.galaxy.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:443')['ansible'] }}"
x509_certificates:
  self_signed_certificates:
    - cn: homer.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/pki/tls/certs/homer.galaxy.derksencomputing.nl.csr
      key_path: /etc/pki/tls/private/homer.galaxy.derksencomputing.nl.key
      crt_path: /etc/pki/tls/certs/homer.galaxy.derksencomputing.nl.crt
      owner: nginx
      group: nginx
    - cn: kanboard.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/pki/tls/certs/kanboard.galaxy.derksencomputing.nl.csr
      key_path: /etc/pki/tls/private/kanboard.galaxy.derksencomputing.nl.key
      crt_path: /etc/pki/tls/certs/kanboard.galaxy.derksencomputing.nl.crt
      owner: nginx
      group: nginx
    - cn: vault.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/pki/tls/certs/vault.galaxy.derksencomputing.nl.csr
      key_path: /etc/pki/tls/private/vault.galaxy.derksencomputing.nl.key
      crt_path: /etc/pki/tls/certs/vault.galaxy.derksencomputing.nl.crt
      owner: nginx
      group: nginx
    - cn: photoprism.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/pki/tls/certs/photoprism.galaxy.derksencomputing.nl.csr
      key_path: /etc/pki/tls/private/photoprism.galaxy.derksencomputing.nl.key
      crt_path: /etc/pki/tls/certs/photoprism.galaxy.derksencomputing.nl.crt
      owner: nginx
      group: nginx
    - cn: jellyfin.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/pki/tls/certs/jellyfin.galaxy.derksencomputing.nl.csr
      key_path: /etc/pki/tls/private/jellyfin.galaxy.derksencomputing.nl.key
      crt_path: /etc/pki/tls/certs/jellyfin.galaxy.derksencomputing.nl.crt
      owner: nginx
      group: nginx
    - cn: homeassistant.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/pki/tls/certs/homeassistant.galaxy.derksencomputing.nl.csr
      key_path: /etc/pki/tls/private/homeassistant.galaxy.derksencomputing.nl.key
      crt_path: /etc/pki/tls/certs/homeassistant.galaxy.derksencomputing.nl.crt
      owner: nginx
      group: nginx
    - cn: pihole.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/pki/tls/certs/pihole.galaxy.derksencomputing.nl.csr
      key_path: /etc/pki/tls/private/pihole.galaxy.derksencomputing.nl.key
      crt_path: /etc/pki/tls/certs/pihole.galaxy.derksencomputing.nl.crt
      owner: nginx
      group: nginx

