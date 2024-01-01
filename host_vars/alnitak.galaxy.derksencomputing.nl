ansible_become_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/alnitak.galaxy.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:8200')['ansible'] }}"
ansible_ssh_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/alnitak.galaxy.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:8200')['ansible'] }}"
x509_certificates:
  self_signed_certificates:
    - cn: kanboard.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/pki/tls/certs/kanboard.galaxy.derksencomputing.nl.csr
      key_path: /etc/pki/tls/private/kanboard.galaxy.derksencomputing.nl.key
      crt_path: /etc/pki/tls/certs/kanboard.galaxy.derksencomputing.nl.crt
      owner: root
      group: root
    - cn: vault.galaxy.derksencomputing.nl
      country_name: NL
      company: Derksen Computing
      email_address: jelle@derksencomputing.nl
      csr_path: /etc/pki/tls/certs/vault.galaxy.derksencomputing.nl.csr
      key_path: /etc/pki/tls/private/vault.galaxy.derksencomputing.nl.key
      crt_path: /etc/pki/tls/certs/vault.galaxy.derksencomputing.nl.crt
      owner: vault
      group: vault
