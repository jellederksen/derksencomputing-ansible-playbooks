kerberos_service_principals:
  - nfs
borgbase_repo: cvg50cft@cvg50cft.repo.borgbase.com:repo
borgbase_passphrase: !vault |
          $ANSIBLE_VAULT;1.1;AES256
          30393930363534396663373330313033306338393266646339643336383533646336316430376261
          3437313936326138616132633334376237613061313162610a616436343130633566383163336438
          34633764323438663831663735376365353539323362396535656162643030653438643635653337
          3532623532643733650a633638316130376631353562316663363662366138646166326336373237
          6133

borg_to_backup: /datastore
