#!/bin/bash
#
# nome_completo.sh - Busca o nome completo de um usuÃÂ¡rio no Unix
#
# Site      : http://programas.com.br/nomecompleto/
# Autor     : JoÃÂ£o Silva <joao@email.com.br>
# ManutenÃÂ§ÃÂ£o: Maria Teixeira <maria@email.com.br>
#
#  -------------------------------------------------------------
#   Este programa recebe como parÃÂ¢metro o login de um usuÃÂ¡rio e
#   procura em vÃÂ¡rias bases qual o seu nome completo, retornando
#   o resultado na saÃÂ­da padrÃÂ£o (STDOUT).
#
#   Exemplos:
#      $ ./nome_completo.sh jose
#      JosÃÂ© Moreira
#      $ ./nome_completo.sh joseee
#      $
#
#   A ordem de procura do nome completo ÃÂ© seqÃÂ¼encial:
#
#      1. Arquivo /etc/passwd
#      2. Arquivo $HOME/.plan
#      3. Base de UsuÃÂ¡rios LDAP
#      4. Base de UsuÃÂ¡rios MySQL
#
#   Respeitando a ordem, o primeiro resultado encontrado serÃÂ¡ o
#   retornado.
#  -------------------------------------------------------------
#
#
# HistÃÂ³rico:
#
#    v1.0 1999-05-18, JoÃÂ£o Silva:
#       - VersÃÂ£o inicial procurando no /etc/passwd
#    v1.1 1999-08-02, JoÃÂ£o Silva:
#       - Adicionada pesquisa no $HOME/.plan
#       - Corrigido bug com nomes acentuados
#    v2.0 2000-04-28, MÃÂ¡rio Rocha:
#       - Corrigidos 2.534 bugs (O JoÃÂ£o nÃÂ£o sabe programar!)
#       - Adicionado meu nome em vÃÂ¡rios lugares hehehe
#    v2.1 2000-04-30, JosÃÂ© Moreira:
#       - Desfeitas as "correÃÂ§ÃÂµes" do MÃÂ¡rio (ele quebrou o programa)
#       - Retirada a frase "MÃÂ¡rio ÃÂ© o Maior" de vÃÂ¡rias partes
#    v2.2 2000-05-02, JosÃÂ© Moreira:
#       - Adicionado suporte a LDAP (que trabalheira!)
#       - Aceita nomes de usuÃÂ¡rios EM MAIÃÂSCULAS
#       - Retirado suporte a acentuaÃÂ§ÃÂ£o (estraga meu terminal)
#    v2.3 2000-05-03, JosÃÂ© Moreira:
#       - Arrumado o suporte a LDAP (agora vai funcionar)
#    v2.4 2000-05-03, JosÃÂ© Moreira:
#       - Arrumado o suporte a LDAP (agora ÃÂ© pra valer)
#    v2.5 2000-05-04, JosÃÂ© Moreira:
#       - Retirado o suporte a LDAP (eu odeio LDAP!)
#    v3.0 2000-05-10, Maria Teixeira:
#       - Programa reescrito do zero
#       - Adicionado suporte a LDAP (funcional)
#       - Adicionado suporte a MySQL
#       - Restaurado suporte a acentuaÃÂ§ÃÂ£o
#    v3.1 2003-05-10, Maria Teixeira:
#       - Adicionado este comentÃÂ¡rio para comemorar 3 anos sem
#         alteraÃÂ§ÃÂµes :)
#
#
# LicenÃÂ§a: GPL.
#
