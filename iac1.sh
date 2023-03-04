#!/bin/bash

echo "Creating directories..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "Specify directory permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "The end"
