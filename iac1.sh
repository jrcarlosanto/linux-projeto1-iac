#!/bin/bash

echo "Criando os diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -aixmd5 Senha123) -G GRP_AMD
useradd maria -m -s /bin/bash -p $(openssl passwd -aixmd5 Senha123) -G GRP_AMD
useradd joao -m -s /bin/bash -p $(openssl passwd -aixmd5 Senha123) -G GRP_AMD

useradd debora -m -s /bin/bash -p $(openssl passwd -aixmd5 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -aixmd5 Senha123) -G GRP_VEN
useradd roberta -m -s /bin/bash -p $(openssl passwd -aixmd5 Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -aixmd5 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -aixmd5 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -aixmd5 Senha123) -G GRP_SEC

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
