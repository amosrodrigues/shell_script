#!/bin/bash
#
# seq.sh - EmulaÃ§Ã£o do comando seq em Bash, por AurÃ©lio M. Jargas
#
# O comando seq recebe dois nÃºmeros e mostra na saÃ­da padrÃ£o todos os nÃºmeros
# existentes entre eles, inclusive. Essa seqÃ¼Ãªncia estÃ¡ pronta para ser usada
# pelo comando FOR. Caso omitido o nÃºmero inicial, Ã© utilizado o 1.
#
#       Exemplo 1            Exemplo 2            Exemplo 3
#
#        $ seq 5 10          $ seq 10 5           $ seq 5
#        5                   10                   1
#        6                   9                    2
#        7                   8                    3
#        8                   7                    4
#        9                   6                    5
#        10                  5
#
# Uso em scripts: for i in $(seq 5 10); do comandos ; done
#
o=+ a=1 z=${1:-1}; [ "$2" ] && { a=$1; z=$2; } ; [ $a -gt $z ] && o=-
while [ $a -ne $z ]; do echo $a ; eval "a=\$((a $o 1))"; done; echo $a
