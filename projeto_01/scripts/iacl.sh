#!/bin/bash

echo -e "\nCriando diretórios..."
mkdir -v /publica
mkdir -v /adm
mkdir -v /ven
mkdir -v /sec

echo -e "\nCriando grupo de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo -e "\nCriando usuários..."
# ADM
    # Caio
    # Maria
    # Joao
useradd caio   -c 'Caio'  -g GRP_ADM -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd maria  -c 'Maria' -g GRP_ADM -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd joao   -c 'Joao'  -g GRP_ADM -m -s /bin/bash -p $(openssl passwd -6 senha123)

# VEN
    # Debora
    # Sebastiana
    # Roberto
useradd debora      -c 'Debora'     -g GRP_VEN -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd sebastiana  -c 'Sebastiana' -g GRP_VEN -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd roberto     -c 'Roberto'    -g GRP_VEN -m -s /bin/bash -p $(openssl passwd -6 senha123)

# SEC
    # Josefina
    # Amanda
    #Rogerio
useradd josefina -c 'Josefina' -g GRP_SEC -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd amanda   -c 'Amanda'   -g GRP_SEC -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd rogerio  -c 'Rogerio'  -g GRP_SEC -m -s /bin/bash -p $(openssl passwd -6 senha123)

echo -e "\nEspecificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publica
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo -e "\nFim...."
