#!/bin/bash

echo "Criando diretórios . ."

mkdir /publico /adm /ven /sec

echo "Criando grupos . ."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários . ."

useradd carlos -c "Carlos" -g GRP_ADM -m -s /bin/bash -p $(openssl passwd Senha123)
useradd maria -c "Maria" -g GRP_ADM -m -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -c "João" -g GRP_ADM -m -s /bin/bash -p $(openssl passwd Senha123)

useradd debora -c "Débora" -g GRP_VEN -m -p $(openssl passwd Senha123)
useradd sebastiana -c "Sebastiana" -g GRP_VEN -m -p $(openssl passwd Senha123)
useradd roberto -c "Roberto" -g GRP_VEN -m -p $(openssl passwd Senha123)

useradd josefina -c "Josefina" -g GRP_SEC -m -p $(openssl passwd Senha123)
useradd amanda -c "Amanda" -g GRP_SEC -m -p $(openssl passwd Senha123)
useradd rogerio -c "Rogério" -g GRP_SEC -m -p $(openssl passwd Senha123)

echo "Ajustando Permissões . ."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Feito !"
