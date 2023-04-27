#!/bin/bash

echo "Iniciando arquivo..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd debora -c "Debóra" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "rogerio" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

passwd carlos -e
passwd maria -e
passwd joao -e
passwd debora -e
passwd sebastiana -e
passwd roberto -e
passwd josefina -e
passwd amanda -e
passwd rogerio -e

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 770 /adm/ 
chmod 770 /ven/ 
chmod 770 /sec/ 
chmod 777 /publico/ 

echo "Tarefa finalizada!"
