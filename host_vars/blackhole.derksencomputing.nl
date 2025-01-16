ansible_ssh_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/blackhole.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:443')['ansible'] }}"
ansible_become_pass: "{{ lookup('community.general.hashi_vault', 'validate_certs=false secret=derksencomputing/data/blackhole.derksencomputing.nl token={{ hasicorp_vault_token }} url=https://vault.galaxy.derksencomputing.nl:443')['ansible'] }}"
ansible_become_method: doas
ipsec_peer: 178.239.16.130
