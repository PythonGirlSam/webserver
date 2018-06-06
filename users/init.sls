add-group-apache:
  group.present:
    - name: apache

add_user_apache:
  user.present:
    - name: apache
    - home: /home/apache
    - shell: /bin/bash
    - gid_from_name: True
    - remove_groups: False
    - groups:
      - adm
      - sudo
      - apache

add_user_sam:
  user.present:
    - name: sam
    - fullname: Saumya Gupta
    - home: /home/sam
    - shell: /bin/bash
    - gid_from_name: True
    - remove_groups: False
    - password: swift09
    - groups:
      - adm
      - sudo
      - apache
