#!/bin/bash
#
# seq.sh - EmulaÃ§Ã£o do comando seq em Bash, por AurÃ©lio M. Jargas
#
# O comando seq recebe dois nÃºmeros e mostra na saÃ­da padrÃ£o todos os nÃºmeros
# existentes entre eles, inclusive. Essa seqÃ¼Ãªncia estÃ¡ pronta para ser usada
# pelo comando FOR. Caso omitido o nÃºmero inicial, Ã© utilizado o 1.
#
#        Exemplo 1           Exemplo 2            Exemplo 3
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

### InicializaÃ§Ã£o das variÃ¡veis
o=+           # OperaÃ§Ã£o a ser feita. Pode ser + ou -
a=1           # Valor padrÃ£o de inÃ­cio da contagem
z=${1:-1}     # Valor do final da contagem recebido em $1 (padrÃ£o Ã© 1)

# A variÃ¡vel 'a' Ã© o nÃºmero de inÃ­cio e a variÃ¡vel 'z' Ã© o final.
#
# O cÃ³digo anterior serve para quando o usuÃ¡rio passar apenas um valor na
# linha de comando, que seria o valor do *final* da contagem. Por isso
# a=1 e z=$1.
#
# Caso o programa seja chamado sem parÃ¢metros, 'z' tambÃ©m Ã© definido
# como 1. Como a=1 e z=1, o programa retorna apenas o nÃºmero 1.

[ "$2" ] && {

	# Foram passados 2 parÃ¢metros, o $1 Ã© o inÃ­cio e o $2 Ã© o fim.
	a=$1
	z=$2
}

###
# Se o nÃºmero inicial ($a) for maior que o nÃºmero final ($z),
# faremos uma contagem regressiva, por isso a operaÃ§Ã£o Ã© definida
# como subtraÃ§Ã£o.
#
[ $a -gt $z ] && o=-

###
# Loop da contagem (progressiva ou regressiva)
#
# A cada volta, adiciona ou subtrai 1 do valor inicial,
# atÃ© que ele se iguale ao final.
#
# O eval executa o resultado da expansÃ£o de variÃ¡veis.
# Supondo o='+' e a=3, o eval executarÃ¡ o comando a=$((3+1)).
#
while [ $a -ne $z ]; do
	echo $a                 # mostra a contagem atual
	eval "a=\$((a $o 1))"   # efetua a operaÃ§Ã£o (+1 ou -1)
done
echo $a                         # mostra o Ãºltimo nÃºmero
