ipa_domain: galaxy.derksencomputing.nl
ipa_realm: GALAXY.DERKSENCOMPUTING.NL
ipa_reverse_zones:
  - 0.16.172
  - 1.16.172
  - 0.0.10
  - 0.1.10

ipa_user_default_pass: !vault |
          $ANSIBLE_VAULT;1.1;AES256
          34343932383434643931343736366535626263373963323465393436366161646462353565326438
          6532613637646532656638626164653165343133303165390a343431393039343732303736356239
          31613930663437643031623235653462303433396564323165613164616339653935346265623032
          6664393563373330620a626134623035376562396664343136373432643131633261343266323839
          3833

ipa_users:
  - name: jelle
    givenname: Jelle
    sn: Derksen
    password: "{{ ipa_user_default_pass }}"
    loginshell: /bin/ksh
